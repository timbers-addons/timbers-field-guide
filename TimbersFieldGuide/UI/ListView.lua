local _, TFG = ...
local frame = TFG.frame
local UI    = TFG.UI

-- Player state is refreshed from game events later in this file.
local playerFaction
local playerRaceName
local playerRaceKey
local playerClass
local playerLevel

local function normalizeSkillKey(name)
    if not name then return "" end
    return string.gsub(tostring(name):upper(), " ", "_")
end

local RACE_ALIASES = {
    human = "HUMAN",
    dwarf = "DWARF",
    nightelf = "NIGHTELF",
    gnome = "GNOME",
    draenei = "DRAENEI",
    orc = "ORC",
    troll = "TROLL",
    tauren = "TAUREN",
    undead = "SCOURGE",
    scourge = "SCOURGE",
    bloodelf = "BLOODELF",
    -- Both Skyborne races report the token "Skyborne"; the faction tells them apart.
    highorderskyborne = "SKYBORNE_ALLIANCE",
    windshaperskyborne = "SKYBORNE_HORDE",
}

local function normalizeRaceKey(race)
    local compact = tostring(race or ""):lower():gsub("[^%a]", "")
    return RACE_ALIASES[compact] or compact:upper()
end

local function getRestrictedRaces(spell)
    if not spell then return nil end
    if type(spell.races) == "table" and #spell.races > 0 then
        return spell.races
    end
    if spell.race and tostring(spell.race) ~= "" then
        local races = {}
        for value in tostring(spell.race):gmatch("[^,;/]+") do
            races[#races + 1] = value:match("^%s*(.-)%s*$")
        end
        return races
    end
    return nil
end

local function matchesPlayerRace(spell)
    local races = getRestrictedRaces(spell)
    if not races then return true end
    for _, race in ipairs(races) do
        if normalizeRaceKey(race) == playerRaceKey then
            return true
        end
    end
    return false
end

-- Also takes a source with `races`: the popup leads with the player's race's quest.
TFG.MatchesPlayerRace = matchesPlayerRace

local RACE_FACTION = {
    HUMAN = "Alliance", DWARF = "Alliance", NIGHTELF = "Alliance", GNOME = "Alliance", DRAENEI = "Alliance",
    SKYBORNE_ALLIANCE = "Alliance",
    ORC = "Horde", TROLL = "Horde", TAUREN = "Horde", SCOURGE = "Horde", BLOODELF = "Horde",
    SKYBORNE_HORDE = "Horde",
}

-- A source's side: its own `faction`, else the one side all its races are on
-- (a Night Elf quest is Alliance; Strength and Mercy, for both Skyborne, is neither).
function TFG.SourceFaction(s)
    if s.faction then return s.faction end
    local races = getRestrictedRaces(s)
    if not races then return nil end
    local side
    for _, race in ipairs(races) do
        local f = RACE_FACTION[normalizeRaceKey(race)]
        if not f or (side and f ~= side) then return nil end
        side = f
    end
    return side
end

-- Sources as shown: one per group that differs only in place, see TFG.GroupSources.
local function groupedSources(entry)
    return TFG.GroupSources(TFG.GetSources(entry), GetRealZoneText and GetRealZoneText() or nil, matchesPlayerRace)
end

local function formatRestrictedRaces(spell)
    local races = getRestrictedRaces(spell)
    return races and table.concat(races, ", ") or nil
end

local function getRaceRestrictionSignature(spell)
    local races = getRestrictedRaces(spell)
    if not races then return nil end
    local normalized = {}
    for _, race in ipairs(races) do
        normalized[#normalized + 1] = normalizeRaceKey(race)
    end
    table.sort(normalized)
    return table.concat(normalized, ",")
end

-- Data-model accessors live in Core/Model.lua; alias them as locals so the
-- existing call sites below read unchanged.
local getEffectivePhase = TFG.GetEffectivePhase
local isEntryAvailableInPhase = TFG.IsEntryAvailableInPhase
local getSpellId = TFG.GetSpellId
local getSpellTexture = TFG.GetSpellTexture
local getSpellRank = TFG.GetSpellRank
local isTalentSpell = TFG.IsTalentSpell
local isAnyTalentRankKnown = TFG.IsAnyTalentRankKnown
local hasSpellCategory = TFG.HasSpellCategory
local getTrainingCost = TFG.GetTrainingCost
local getProductItemId = TFG.GetProductItemId
local getProductQty = TFG.GetProductQty
local getMaterialItemId = TFG.GetMaterialItemId
local getMaterialQty = TFG.GetMaterialQty
local getRecipeSourceId = TFG.GetRecipeSourceId
local sourceTypeLabel = TFG.SourceTypeLabel
local buildSourceLine = TFG.BuildSourceLine
local resolveQuestTitle = TFG.ResolveQuestTitle
local getMaxExplicitPhase = TFG.GetMaxExplicitPhase
local MIDDOT = TFG.MIDDOT

-- Client-compat wrappers (see Core/Compat.lua); shadow the globals so the call
-- sites below read unchanged.
local GetSpellInfo = TFG.GetSpellInfo
local GetItemInfo = TFG.GetItemInfo

-- Store both current and inferred max cap for skills/professions.
-- Classic Era PTR appears to return 0 for the "max" fields from GetSkillLineInfo,
-- so we infer a reasonable cap from the current rank and expected tier table.
local skillLevels = {}
local skillCaps = {}

-- Forward-declare riding helpers so functions defined below reference locals, not globals.
local getRidingLevel, getRidingMaxCap, getRidingName

-- Debug logging: send everything to chat.
-- Toggle at runtime with: /run TFG.debugChat=true (or false)
if TFG.debugChat == nil then TFG.debugChat = false end

local function TFG_DebugLog(...)
    if not TFG.debugChat then return end
    local msg = "|cffffaa00TFG|r: "
    for i = 1, select('#', ...) do
        local v = select(i, ...)
        if v == nil then
            msg = msg .. "nil"
        else
            msg = msg .. tostring(v)
        end
        if i < select('#', ...) then msg = msg .. " " end
    end
    if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
        _G.DEFAULT_CHAT_FRAME:AddMessage(msg)
    elseif type(print) == "function" then
        print(msg)
    end
end

-- Global helper to toggle debug chat output from the WoW chat window.
-- Use in-game as:
--   /run TFGDebug(true)  -- enable
--   /run TFGDebug(false) -- disable
-- If called with no arg, it toggles on.
if _G and type(_G.TFGDebug) ~= "function" then
    _G.TFGDebug = function(v)
        local on = true
        if v ~= nil then on = not not v end
        if TFG then
            TFG.debugChat = on
            if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
                _G.DEFAULT_CHAT_FRAME:AddMessage("|cffffaa00TFG|r: debugChat set to " .. tostring(on))
            else
                print("TFG: debugChat set to " .. tostring(on))
            end
        else
            if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
                _G.DEFAULT_CHAT_FRAME:AddMessage("|cffffaa00TFG|r: internal TFG table not available yet")
            else
                print("TFG: internal TFG table not available yet")
            end
        end
    end
end

local function inferProfessionCapFromRank(rank)
    rank = tonumber(rank) or 0
    if rank <= 0 then return 0 end
    -- Classic Era cap (Forever keeps the same tiers)
    local vkey = TFG.selectedExpansion and TFG.selectedExpansion:upper()
    if vkey == "CLASSIC_ERA" or vkey == "FOREVER" then
        if rank <= 75 then return 75 end
        if rank <= 150 then return 150 end
        if rank <= 225 then return 225 end
        return 300
    end
    -- TBC-era cap (also safe for later expansions until we add explicit data)
    if rank <= 75 then return 75 end
    if rank <= 150 then return 150 end
    if rank <= 225 then return 225 end
    if rank <= 300 then return 300 end
    return 375
end

local function clearTable(tbl)
    for key in pairs(tbl) do
        tbl[key] = nil
    end
end

function TFG.RefreshPlayerState()
    playerFaction = UnitFactionGroup("player")
    local localizedRace, englishRace = UnitRace("player")
    playerRaceName = localizedRace or englishRace or "Unknown"
    playerRaceKey = normalizeRaceKey(englishRace or localizedRace)
    if playerRaceKey == "SKYBORNE" and playerFaction then
        playerRaceKey = playerRaceKey .. "_" .. playerFaction:upper()
    end
    playerClass = select(2, UnitClass("player")) or ""
    playerLevel = tonumber(UnitLevel("player")) or 0

    clearTable(skillLevels)
    clearTable(skillCaps)

    for _, skill in ipairs(TFG.GetPlayerSkillLines()) do
        local key = normalizeSkillKey(skill.name)
        local rank = tonumber(skill.rank or 0) or 0
        skillLevels[key] = rank

        -- Classic Era PTR reports 0 for the cap; infer it from the rank then.
        local maxRank = tonumber(skill.maxRank or 0) or 0
        if maxRank <= 0 then
            maxRank = inferProfessionCapFromRank(rank)
        end
        skillCaps[key] = maxRank
    end
end

TFG.RefreshPlayerState()


-- ========================================================================== 
-- Messages to the user
-- ==========================================================================
-- ========================================================================== 
-- Scroll frame (no background)
-- ==========================================================================
local scrollBG = CreateFrame("Frame", nil, frame, "BackdropTemplate")
frame.scrollBG = scrollBG

scrollBG:SetPoint("TOPLEFT", 16, -UI.TITLEBAR_HEIGHT - 40)
scrollBG:SetPoint("BOTTOMRIGHT", -39, 16)

local scrollFrame = CreateFrame("ScrollFrame", nil, scrollBG, "UIPanelScrollFrameTemplate")
scrollFrame:SetAllPoints()

local content = CreateFrame("Frame", nil, scrollFrame)
content:SetSize(1,1)
scrollFrame:SetScrollChild(content)

-- Render width is the wrapping width for ability/recipe icons. It must track
-- whichever container the scroll view currently lives in: the legacy frame, or
-- the new navigation shell's content pane once TFG.MountEngineInto() re-hosts it.
local function getRenderWidth()
    if TFG._engineMounted and scrollFrame then
        local w = scrollFrame:GetWidth()
        if w and w > 1 then
            return w - UI.ICON_SPACING
        end
    end
    return frame:GetWidth() - UI.FRAME_PADDING_X
end

local renderPool = {
    labels = {},
    icons = {},
    labelCount = 0,
    iconCount = 0,
    -- Weapon skills: the panel behind a city's group, and the hover target on its label.
    panels = {},
    panelCount = 0,
    hits = {},
    hitCount = 0,
}

local function resetRenderPool()
    renderPool.labelCount = 0
    renderPool.iconCount = 0
    renderPool.panelCount = 0
    renderPool.hitCount = 0

    for _, panel in ipairs(renderPool.panels) do
        for _, t in pairs(panel) do t:Hide() end
    end
    for _, hit in ipairs(renderPool.hits) do
        hit:Hide()
        hit.group = nil
    end

    for _, label in ipairs(renderPool.labels) do
        label:Hide()
        label:ClearAllPoints()
    end

    for _, icon in ipairs(renderPool.icons) do
        icon:Hide()
        icon:EnableMouse(false)
        icon:ClearAllPoints()
        icon:SetScript("OnMouseDown", nil)
        icon:SetScript("OnEnter", nil)
        icon:SetScript("OnLeave", nil)
        icon.spellData = nil
        icon.tfgGroup = nil
        if icon.tfgKnownOverlay then icon.tfgKnownOverlay:Hide() end
        if icon.tfgRedOverlay then icon.tfgRedOverlay:Hide() end
        if icon.tfgBlueBorder then icon.tfgBlueBorder:Hide() end
        if icon.tfgClickableIndicator then icon.tfgClickableIndicator:Hide() end
        if icon.tfgTalentIndicator then icon.tfgTalentIndicator:Hide() end
        if icon.tfgPhaseIndicator then icon.tfgPhaseIndicator:Hide() end
    end
end

local function acquireRowLabel()
    renderPool.labelCount = renderPool.labelCount + 1
    local label = renderPool.labels[renderPool.labelCount]
    if not label then
        label = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        renderPool.labels[renderPool.labelCount] = label
    end
    label:Show()
    label:ClearAllPoints()
    return label
end

local function acquireEntryIcon()
    renderPool.iconCount = renderPool.iconCount + 1
    local icon = renderPool.icons[renderPool.iconCount]
    if not icon then
        icon = content:CreateTexture(nil, "ARTWORK")
        renderPool.icons[renderPool.iconCount] = icon
    end
    icon:Show()
    icon:EnableMouse(false)
    icon:ClearAllPoints()
    return icon
end

-- A panel in the style of the window chrome: a faint dark fill with a gold
-- hairline, drawn under the icons.
local function acquireGroupPanel(left, top, width, height)
    renderPool.panelCount = renderPool.panelCount + 1
    local panel = renderPool.panels[renderPool.panelCount]
    if not panel then
        local function tex(layer, sub, color)
            local t = content:CreateTexture(nil, layer, nil, sub)
            t:SetColorTexture(unpack(color))
            return t
        end
        panel = { fill = tex("BACKGROUND", 0, TFG.COLORS.groupPanel) }
        for _, edge in ipairs({ "top", "bottom", "left", "right" }) do
            panel[edge] = tex("BACKGROUND", 1, TFG.COLORS.groupBorder)
        end
        renderPool.panels[renderPool.panelCount] = panel
    end
    local right, bottom = left + width, top - height
    panel.fill:SetPoint("TOPLEFT", content, "TOPLEFT", left, top)
    panel.fill:SetPoint("BOTTOMRIGHT", content, "TOPLEFT", right, bottom)
    panel.top:SetPoint("TOPLEFT", content, "TOPLEFT", left, top)
    panel.top:SetPoint("BOTTOMRIGHT", content, "TOPLEFT", right, top - 1)
    panel.bottom:SetPoint("TOPLEFT", content, "TOPLEFT", left, bottom + 1)
    panel.bottom:SetPoint("BOTTOMRIGHT", content, "TOPLEFT", right, bottom)
    panel.left:SetPoint("TOPLEFT", content, "TOPLEFT", left, top)
    panel.left:SetPoint("BOTTOMRIGHT", content, "TOPLEFT", left + 1, bottom)
    panel.right:SetPoint("TOPLEFT", content, "TOPLEFT", right - 1, top)
    panel.right:SetPoint("BOTTOMRIGHT", content, "TOPLEFT", right, bottom)
    for _, t in pairs(panel) do t:Show() end
end

local function acquireGroupHit()
    renderPool.hitCount = renderPool.hitCount + 1
    local hit = renderPool.hits[renderPool.hitCount]
    if not hit then
        hit = CreateFrame("Frame", nil, content)
        renderPool.hits[renderPool.hitCount] = hit
    end
    hit:ClearAllPoints()
    hit:Show()
    return hit
end

local function isIconInsideScrollViewport(icon)
    if not icon or not icon:IsShown() then return false end

    local iconTop = icon:GetTop()
    local iconBottom = icon:GetBottom()
    local viewportTop = scrollFrame:GetTop()
    local viewportBottom = scrollFrame:GetBottom()
    if not iconTop or not iconBottom or not viewportTop or not viewportBottom then
        return false
    end

    return iconBottom < viewportTop and iconTop > viewportBottom
end

-- Weapon skills: hovering a city's label shows its map under the tooltip, with a
-- pin on each trainer whose spot the data has (`position` on the source, map
-- percent as the world map shows it). The art is the client's own map tiles.
local MAP_TIP_WIDTH, PIN = 320, 5

-- Cities in the order a mage learns their teleports; anything else after, by name.
local CITY_ORDER = {
    ["Stormwind City"] = 1, ["Ironforge"] = 2, ["Darnassus"] = 3, ["The Exodar"] = 4,
    ["Orgrimmar"] = 1, ["Undercity"] = 2, ["Thunder Bluff"] = 3, ["Silvermoon City"] = 4,
}
local mapTip
local function ensureMapTip()
    if mapTip then return mapTip end
    mapTip = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
    mapTip:SetFrameStrata("TOOLTIP")
    mapTip:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8X8", edgeFile = "Interface\\Buttons\\WHITE8X8", edgeSize = 1 })
    mapTip:SetBackdropColor(unpack(TFG.POPUP.bg))
    mapTip:SetBackdropBorderColor(unpack(TFG.POPUP.border))
    mapTip.art = CreateFrame("Frame", nil, mapTip)
    mapTip.art:SetPoint("TOPLEFT", 4, -4)
    if mapTip.art.SetClipsChildren then mapTip.art:SetClipsChildren(true) end
    mapTip.tiles, mapTip.pins = {}, {}
    mapTip:Hide()
    return mapTip
end

local function groupMapID(group)
    for _, trainer in ipairs(group.trainers) do
        local pos = group.positions[trainer]
        if pos then return pos.map end
    end
end

-- Draws the group's city map under the shown GameTooltip, with a pin on each of
-- its trainers that has a spot, or only those in `only` (a set of names) when
-- given: a weapon's tooltip pins just the masters there who teach it.
local function showMapUnderTooltip(group, only)
    local mapID = groupMapID(group)
    local art = TFG.GetMapArt(mapID)
    if not art then return end

    local tip = ensureMapTip()
    local scale = MAP_TIP_WIDTH / art.width
    local height = art.height * scale
    tip:SetSize(MAP_TIP_WIDTH + 8, height + 8)
    tip.art:SetSize(MAP_TIP_WIDTH, height)
    local cols = math.ceil(art.width / art.tileWidth)
    for _, t in ipairs(tip.tiles) do t:Hide() end
    for i, fileID in ipairs(art.textures) do
        local t = tip.tiles[i] or tip.art:CreateTexture(nil, "ARTWORK")
        tip.tiles[i] = t
        local col, row = (i - 1) % cols, math.floor((i - 1) / cols)
        t:SetTexture(fileID)
        t:SetSize(art.tileWidth * scale, art.tileHeight * scale)
        t:ClearAllPoints()
        t:SetPoint("TOPLEFT", col * art.tileWidth * scale, -row * art.tileHeight * scale)
        t:Show()
    end
    for _, p in ipairs(tip.pins) do p.ring:Hide(); p.dot:Hide() end
    local n = 0
    for _, trainer in ipairs(group.trainers) do
        local pos = group.positions[trainer]
        if pos and pos.map == mapID and (not only or only[trainer]) then
            n = n + 1
            local p = tip.pins[n]
            if not p then
                p = { ring = tip.art:CreateTexture(nil, "OVERLAY", nil, 1), dot = tip.art:CreateTexture(nil, "OVERLAY", nil, 2) }
                p.ring:SetColorTexture(0, 0, 0, 1)
                p.dot:SetColorTexture(1, 0.82, 0, 1)
                tip.pins[n] = p
            end
            local x, y = pos.x / 100 * MAP_TIP_WIDTH, -pos.y / 100 * height
            p.ring:SetSize(PIN * 2 + 2, PIN * 2 + 2)
            p.ring:SetPoint("CENTER", tip.art, "TOPLEFT", x, y)
            p.dot:SetSize(PIN * 2 - 2, PIN * 2 - 2)
            p.dot:SetPoint("CENTER", tip.art, "TOPLEFT", x, y)
            p.ring:Show()
            p.dot:Show()
        end
    end
    tip:ClearAllPoints()
    tip:SetPoint("TOPLEFT", GameTooltip, "BOTTOMLEFT", 0, -2)
    tip:Show()
end

local function showGroupMap(owner, group)
    local mapID = groupMapID(group)
    GameTooltip:SetOwner(owner, "ANCHOR_BOTTOMRIGHT")
    GameTooltip:SetText(group.place, 1, 0.82, 0)
    for _, trainer in ipairs(group.trainers) do
        local pos = group.positions[trainer]
        if pos and pos.map == mapID then
            GameTooltip:AddDoubleLine(trainer, ("%.1f, %.1f"):format(pos.x, pos.y), 1, 1, 1, 0.8, 0.8, 0.8)
        else
            GameTooltip:AddLine(trainer, 1, 1, 1)
        end
    end
    GameTooltip:Show()
    showMapUnderTooltip(group)
end

local function hideGroupMap()
    GameTooltip:Hide()
    if mapTip then mapTip:Hide() end
end

local function updateIconMouseState()
    for index = 1, renderPool.iconCount do
        local icon = renderPool.icons[index]
        if icon then
            local isInteractive = isIconInsideScrollViewport(icon)
            if not isInteractive then
                if GetMouseFocus and GetMouseFocus() == icon then
                    GameTooltip:Hide()
                end
                if TFG.professionPopup and TFG.professionPopup._anchor == icon then
                    TFG.professionPopup:Hide()
                end
            end
            icon:EnableMouse(isInteractive)
        end
    end
    for index = 1, renderPool.hitCount do
        local hit = renderPool.hits[index]
        hit:EnableMouse(hit.group ~= nil and isIconInsideScrollViewport(hit))
    end
end

local lastVerticalScroll
local lastViewportTop
local lastViewportBottom
scrollFrame:HookScript("OnUpdate", function(self)
    local verticalScroll = self:GetVerticalScroll()
    local viewportTop = self:GetTop()
    local viewportBottom = self:GetBottom()
    if verticalScroll ~= lastVerticalScroll
        or viewportTop ~= lastViewportTop
        or viewportBottom ~= lastViewportBottom then
        lastVerticalScroll = verticalScroll
        lastViewportTop = viewportTop
        lastViewportBottom = viewportBottom
        updateIconMouseState()
    end
end)

local message1 = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
message1:SetFont(message1:GetFont(), 24, "OUTLINE")
message1:SetPoint("CENTER", scrollBG, "CENTER", 0, 20)
--message1:SetText("We don't have this view for this expansion")
message1:SetShown(false)
local message2 = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
message2:SetFont(message2:GetFont(), 24, "OUTLINE")
message2:SetPoint("CENTER", scrollBG, "CENTER", 0, -20)
--message2:SetText("Please select a different view")
message2:SetShown(false)


TFG.selectedCategory = TFG.selectedCategory or "ALL"
TFG.selectedReputation = TFG.selectedReputation or "ALL"

-- Safe close helper (avoids calling a local function before it's defined).
local function safeCloseProfessionPopup()
    if TFG.professionPopup and TFG.professionPopup.IsShown and TFG.professionPopup:IsShown() then
        TFG.professionPopup:Hide()
    end
end

local function isProfessionView()
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return false end
    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if selectionInfo and selectionInfo.parentKey == "professions" then return true end

    -- Special-case: Riding is modelled as a non-profession 'skill' dataset
    -- but should behave like a profession view for filtering/labeling.
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return true
    end

    return false
end

local function extractCategoriesFromDatabase(database)
    local set = {}
    local counts, categorised = {}, 0
    local hasDiscoveries = false
    for _, spells in pairs(database or {}) do
        if type(spells) == "table" then
            for _, spell in ipairs(spells) do
                if spell.categories and type(spell.categories) == "table" then
                    categorised = categorised + 1
                    for _, cat in ipairs(spell.categories) do
                        if cat and cat ~= "" then
                            set[cat] = true
                            counts[cat] = (counts[cat] or 0) + 1
                        end
                    end
                elseif spell.category and spell.category ~= "" then
                    set[spell.category] = true
                end
            end
        end
    end

    -- A label on every categorised entry ("Pets" on the demon page, "Poisons" on the
    -- poison page) filters nothing; keep it only when it is the sole category.
    local distinct = 0
    for _ in pairs(set) do distinct = distinct + 1 end
    if distinct > 1 then
        for cat, n in pairs(counts) do
            if n == categorised then set[cat] = nil end
        end
    end

    hasDiscoveries = type(database and database[TFG.DISCOVERY_BUCKET]) == "table"
        and #database[TFG.DISCOVERY_BUCKET] > 0

    local list = { "ALL" }
    if hasDiscoveries then
        table.insert(list, "DISCOVERIES")
    end
    for c in pairs(set) do
        table.insert(list, c)
    end
    table.sort(list, function(a, b)
        if a == b then return false end
        if a == "ALL" then return true end
        if b == "ALL" then return false end
        -- Normal alphabetical sort for everything else (including DISCOVERIES).
        local aa = (a == "DISCOVERIES") and "Discoveries" or a
        local bb = (b == "DISCOVERIES") and "Discoveries" or b
        return aa < bb
    end)
    return list
end



-- Exposed so an external navigation shell can build its own Category/Phase
-- controls instead of the legacy in-frame dropdowns.
TFG.IsProfessionView = isProfessionView
function TFG.GetCategoryOptions()
    return extractCategoriesFromDatabase(TFG.activeDatabase)
end
-- Professions always filter by category; any other page does once its data
-- has two or more to choose from (demons, pets, poisons).
function TFG.HasCategoryFilter()
    if isProfessionView() then return true end
    local options = extractCategoriesFromDatabase(TFG.activeDatabase)
    return #options > 2
end
-- "ALL", then every faction a source in the active database asks standing with.
function TFG.GetReputationOptions()
    local set, list = {}, { "ALL" }
    for _, spells in pairs(TFG.activeDatabase or {}) do
        for _, spell in ipairs(type(spells) == "table" and spells or {}) do
            for _, s in ipairs(type(spell.source) == "table" and spell.source or {}) do
                local faction = type(s) == "table" and s.reputation and s.reputation.faction
                if faction and not set[faction] then
                    set[faction] = true
                    list[#list + 1] = faction
                end
            end
        end
    end
    table.sort(list, function(a, b)
        if a == "ALL" or b == "ALL" then return a == "ALL" and b ~= "ALL" end
        return a < b
    end)
    return list
end
function TFG.GetMaxPhase()
    return getMaxExplicitPhase(TFG.activeDatabase)
end


local function getProfessionLevelForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    -- (debug prints removed)
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return getRidingLevel and getRidingLevel() or 0
    end
    -- Determine the profession name from the selected dropdown text.
    -- For professions we set selectedFile to "parent::childIndex"; use dropdown to map it back.
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return 0 end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return 0 end

    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if not selectionInfo or selectionInfo.parentKey ~= "professions" then return 0 end

    local child = selectionInfo.child
    if not child or not child.name then return 0 end
    local profName = child.name

    -- Use existing skillLevels map (built from GetSkillLineInfo).
    local key = normalizeSkillKey(profName)
    return tonumber(skillLevels[key] or 0) or 0
end

-- Support treating Riding (a skills dataset) as a profession-like view.
local function getProfessionMaxCapForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return getRidingMaxCap and getRidingMaxCap() or 0
    end
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return 0 end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return 0 end

    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if not selectionInfo or selectionInfo.parentKey ~= "professions" then return 0 end

    local child = selectionInfo.child
    if not child or not child.name then return 0 end
    local profName = child.name

    local key = normalizeSkillKey(profName)
    return tonumber(skillCaps[key] or 0) or 0
end

getRidingMaxCap = function()
    local key = normalizeSkillKey("Riding")
    return tonumber(skillCaps[key] or 0) or 0
end

getRidingLevel = function()
    local key = normalizeSkillKey("Riding")
    return tonumber(skillLevels[key] or 0) or 0
end

getRidingName = function()
    return "Riding"
end

local function getProfessionNameForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return getRidingName and getRidingName() or "Riding"
    end
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return nil end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return nil end

    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if not selectionInfo or selectionInfo.parentKey ~= "professions" then return nil end

    local child = selectionInfo.child
    if not child or not child.name then return nil end
    return tostring(child.name)
end

-- Exposed for the recipe popup (which lives in UI/RecipePopup.lua).
TFG.GetProfessionName = getProfessionNameForCurrentView

-- The current page's name for the popup header on any page: the profession, a
-- class subpage ("Pet Skills"), or the class itself ("Druid"). Nil if unknown.
function TFG.GetViewName()
    local professionName = getProfessionNameForCurrentView()
    if professionName then return professionName end
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    local classes = expansionObject and expansionObject.files and expansionObject.files.classes
    if not classes then return nil end
    local selected = tostring(TFG.selectedFile or ""):lower()
    local classKey, childToken = selected:match("^([^:]+)::(.+)$")
    local class = classes[classKey or selected]
    if not class then return nil end
    if childToken then
        local info = TFG.GetSelectionInfo(expansionObject, selected)
        if info and info.child and info.child.name then return tostring(info.child.name) end
    end
    return class.name and tostring(class.name) or nil
end

-- Check whether the player has a named skill/profession in their skill list.
local function playerHasSkill(skillName)
    if not skillName or tostring(skillName) == "" then return false end
    local target = tostring(skillName):lower()
    for _, skill in ipairs(TFG.GetPlayerSkillLines()) do
        if tostring(skill.name):lower() == target then
            return true
        end
    end
    return false
end



-- ==========================================================================
-- Filter state (the navigation shell owns the controls; these are the defaults)
-- ==========================================================================
TFG.showEnemySpells = false
TFG.showTalents     = false
TFG.showKnown       = false
TFG.showOtherClasses = false
TFG.searchText      = "" -- name-only filter; stored lowercased by the UI

-- Weapon skills: rows are classes and trainers are grouped by city.
function TFG.IsClassGroupedView()
    local db = TFG.activeDatabase
    return type(db) == "table" and type(db.__CONFIG) == "table" and db.__CONFIG.mode == "class" or false
end


-- ========================================================================== 
-- Resize handle
-- ==========================================================================
local resizeButton = CreateFrame("Button", nil, frame)
resizeButton:SetSize(16,16)
resizeButton:SetPoint("BOTTOMRIGHT", -4, 4)
resizeButton:SetNormalTexture("Interface/ChatFrame/UI-ChatIM-SizeGrabber-Up")
resizeButton:SetHighlightTexture("Interface/ChatFrame/UI-ChatIM-SizeGrabber-Highlight")
resizeButton:SetPushedTexture("Interface/ChatFrame/UI-ChatIM-SizeGrabber-Down")

resizeButton:SetScript("OnMouseDown", function(_, button)
    if button == "LeftButton" then frame:StartSizing("BOTTOMRIGHT") end
end)

resizeButton:SetScript("OnMouseUp", function(_, button)
    if button == "LeftButton" then
        frame:StopMovingOrSizing()
        local w,h = frame:GetSize()
        if w<700 then w=700 end
        if h<500 then h=500 end
        frame:SetSize(w,h)
        if frame.ClampToScreen then
            frame:ClampToScreen()
        end
        if frame.SavePosition then
            frame:SavePosition()
        end
        frame:Relayout()
    end
end)

-- ========================================================================== 
-- Layout / Filtering
-- ==========================================================================
function frame:Relayout()
    TFG._stateDirty = false
    safeCloseProfessionPopup()
    resetRenderPool()
    content:SetSize(1,1)
    content:Show()

    local yOffset = -4
    local contentWidth = getRenderWidth()

    local enemySpellsCount = 0
    local talentCount = 0
    local totalSpellsShown = 0

    local isProfession = isProfessionView()
    local hasCategoryFilter = isProfession or TFG.HasCategoryFilter()
    local professionLevel = isProfession and getProfessionLevelForCurrentView() or 0
    local professionMaxCap = isProfession and getProfessionMaxCapForCurrentView() or 0
    local profName = isProfession and getProfessionNameForCurrentView() or nil

    -- The database entry (the rank spell) a synthetic "Skill Unlock" row stands in
    -- for; found once and kept on the row.
    local function rankEntryFor(unlock)
        if unlock._tfgRankEntry == nil then
            unlock._tfgRankEntry = false
            local wanted = tonumber(unlock.trainingSpellId)
            for _, spells in pairs(TFG.activeDatabase or {}) do
                for _, e in ipairs(type(spells) == "table" and spells or {}) do
                    if wanted and not unlock._tfgRankEntry and getSpellId(e) == wanted then
                        unlock._tfgRankEntry = e
                    end
                end
            end
        end
        return unlock._tfgRankEntry or nil
    end
    local hasProfession = false
    if isProfession and profName then
        hasProfession = playerHasSkill(profName)
    end

    local selectedUpper = (TFG.selectedFile or ""):upper()
    local selectedInfo = TFG.GetSelectionInfo(TFG.selectedExpansion, TFG.selectedFile)
    local selectedParentKey = selectedInfo and selectedInfo.parentKey
    local selectedParentUpper = selectedParentKey and (selectedParentKey:upper()) or nil
    local isClassView = (not isProfession) and (not TFG.isSkill)

    

    local function restrictionKey(spell)
        local faction = spell and spell.faction and tostring(spell.faction) or "*"
        local races = getRaceRestrictionSignature(spell) or "*"
        return faction .. "\031" .. races
    end

    local knownRanksByNameIcon = {}
    -- A group ties together spells that replace one another under different names
    -- (Bear Form and Dire Bear Form, the ranks of a poison). Its members are ordered
    -- by the level they are learned at, then by rank: knowing one means knowing
    -- every member at or below it, and nothing above it.
    local knownByGroup = {}
    local groupLevelOf = {}
    TFG._knownTalentKeys = {}

    for bucket, spells in pairs(TFG.activeDatabase or {}) do
        if type(spells) == "table" then
            for _, spell in ipairs(spells) do
                if spell.group and tostring(spell.group) ~= "" then
                    groupLevelOf[spell] = tonumber(tostring(bucket)) or 0
                end
                local sid = getSpellId(spell)
                local applicable = (not spell.faction or spell.faction == playerFaction)
                    and matchesPlayerRace(spell)
                if applicable and sid and tonumber(sid) and tonumber(sid) > 0 and IsPlayerSpell(tonumber(sid)) then
                    local rank = getSpellRank(spell) or 0
                    local name = tostring(spell.name or "")
                    local icon = tostring(spell.icon or spell.texture or "")
                    local restrictions = restrictionKey(spell)

                    if name ~= "" then
                        local key = name .. "\031" .. icon .. "\031" .. restrictions
                        knownRanksByNameIcon[key] = math.max(knownRanksByNameIcon[key] or 0, rank)
                    end
                    if spell.group and tostring(spell.group) ~= "" then
                        local key = tostring(spell.group) .. "\031" .. restrictions
                        local level, best = groupLevelOf[spell] or 0, knownByGroup[key]
                        if not best or level > best.level or (level == best.level and rank > best.rank) then
                            knownByGroup[key] = { level = level, rank = rank }
                        end
                    end
                    if isTalentSpell(spell) and name ~= "" then
                        TFG._knownTalentKeys[name .. "\031" .. tostring(spell.icon or "")] = true
                    end
                end
            end
        end
    end

    local function getHighestKnownRankForSpellName(spellName, targetSpell)
        if not spellName or tostring(spellName) == "" then return nil end
        if targetSpell then
            if targetSpell.faction and targetSpell.faction ~= playerFaction then return nil end
            if not matchesPlayerRace(targetSpell) then return nil end
        end
        local icon = tostring(targetSpell and (targetSpell.icon or targetSpell.texture) or "")
        return knownRanksByNameIcon[
            tostring(spellName) .. "\031" .. icon .. "\031" .. restrictionKey(targetSpell)
        ]
    end

    -- Whether the player knows a member of targetSpell's group at or above it.
    local function isKnownThroughGroup(targetSpell)
        local groupKey = targetSpell and targetSpell.group
        if not groupKey or tostring(groupKey) == "" then return false end
        if targetSpell.faction and targetSpell.faction ~= playerFaction then return false end
        if not matchesPlayerRace(targetSpell) then return false end
        local best = knownByGroup[tostring(groupKey) .. "\031" .. restrictionKey(targetSpell)]
        if not best then return false end
        -- No level to order it by: say nothing rather than mark it known.
        local level = groupLevelOf[targetSpell]
        if not level then return false end
        if best.level ~= level then return best.level > level end
        return best.rank >= (getSpellRank(targetSpell) or 0)
    end

    local function isSpellKnownDBAware(sid, spellObj)
        if not sid or tonumber(sid) == nil then return false end
        sid = tonumber(sid)
        if sid <= 0 then return false end
        -- Quick check: exact spell id present in player's book
        if IsPlayerSpell(sid) then
            return true
        end

        -- If the DB entry itself has faction/race restrictions and the player
        -- does not match them, the spell can never be considered known.
        if spellObj then
            if spellObj.faction and tostring(spellObj.faction) ~= "" and spellObj.faction ~= playerFaction then
                return false
            end
            if not matchesPlayerRace(spellObj) then
                return false
            end
        end

        -- For class views, consult DB ranks: if player knows a DB-listed id for the same
        -- base name with rank >= this entry's rank, consider it known. While scanning the
        -- DB, ignore candidate entries that are not applicable to the player's faction/race.
        -- Group members need no rank of their own (the two bear forms have none).
        if isClassView and isKnownThroughGroup(spellObj) then return true end
        if isClassView and spellObj and tonumber(spellObj.rank) then
            local dbRank = tonumber(spellObj.rank) or 0
            -- Name-based matching
            if spellObj.name and tostring(spellObj.name) ~= "" then
                local known = getHighestKnownRankForSpellName(spellObj.name, spellObj)
                if known and known >= dbRank then return true end
            end
        end
        return false
    end
    -- Whether the Known filter applies to the current view, published to the nav
    -- shell via TFG._filterAvailability: non-profession views always; profession
    -- views only when the player has that profession; class views only for the
    -- player's own class (Riding is treated as eligible).
    local knownApplicable
    if isProfession then
        knownApplicable = hasProfession
    elseif isClassView then
        knownApplicable = (selectedUpper == (playerClass or ""):upper())
            or (selectedParentUpper == (playerClass or ""):upper())
            or selectedUpper == "RIDING"
    else
        knownApplicable = true
    end
    if not knownApplicable then
        TFG.showKnown = false
    end

    

    if isProfession then
        local profName = getProfessionNameForCurrentView() or "?"
        TFG_DebugLog("Relayout profession view", "selectedFile=", tostring(TFG.selectedFile), "profName=", tostring(profName), "category=", tostring(TFG.selectedCategory), "showKnown=", tostring(TFG.showKnown), "level=", tostring(professionLevel), "cap=", tostring(professionMaxCap))
        TFG_DebugLog("Active database type=", type(TFG.activeDatabase))
    end

    local function getProfessionIconForCurrentView()
        -- Prefer the profession's own skill/training icon from the *active profession database*
        -- (e.g., Alchemy spell 2259 with texture trade_alchemy).
        if not isProfession then return "Interface/ICONS/INV_Misc_QuestionMark" end

        local db = TFG.activeDatabase
        if type(db) == "table" then
            -- Some profession datasets (notably Fishing) store training entries under bracket keys
            -- that don't match our synthetic trainAt thresholds (e.g. Artisan training at [225]).
            -- So: scan *any* training entry first, then try resolving via GetSpellInfo.
            local anyTrainingSpellId
            local anyTrainingTexture

            for _, spells in pairs(db) do
                for _, s in ipairs(spells or {}) do
                    if s and hasSpellCategory(s, "Profession Training") then
                        local sSpellId = getSpellId(s)
                        if not anyTrainingSpellId and sSpellId then
                            anyTrainingSpellId = sSpellId
                        end
                        local sTexture = getSpellTexture(s)
                        if not anyTrainingTexture and sTexture and tostring(sTexture) ~= "" then
                            anyTrainingTexture = sTexture
                        end

                        -- Prefer the first resolvable spell icon immediately.
                        if sSpellId then
                            local tex = select(3, GetSpellInfo(sSpellId))
                            if tex and tostring(tex) ~= "" then
                                return tex
                            end
                        end
                    end
                end
            end

            if anyTrainingSpellId then
                local tex = select(3, GetSpellInfo(anyTrainingSpellId))
                if tex and tostring(tex) ~= "" then
                    return tex
                end
            end

            if anyTrainingTexture then
                return anyTrainingTexture
            end
        end

        -- Fallback: resolve by profession name.
        -- This works well for Fishing, where the training spell brackets don't line up with trainAt
        -- and the best canonical icon is the skill line's spell icon.
        local profName = getProfessionNameForCurrentView()
        if profName then
            local tex = select(3, GetSpellInfo(profName))
            if tex and tostring(tex) ~= "" then
                return tex
            end
        end

        return "Interface/ICONS/INV_Misc_QuestionMark"
    end

    local function resolveSelectedSkillKey()
        local selectionInfo = TFG.GetSelectionInfo(TFG.selectedExpansion, TFG.selectedFile)
        if selectionInfo and selectionInfo.child and selectionInfo.child.name then
            return normalizeSkillKey(selectionInfo.child.name)
        end
        return normalizeSkillKey(TFG.selectedFile)
    end

    -- IMPORTANT: Never mutate TFG.rows in-place. Relayout can be called repeatedly without
    -- regenerating rows, and in-place mutation will accumulate injected entries/rows.
    local function shallowCopyRows(rows)
        local out = {}
        for i, r in ipairs(rows or {}) do
            out[i] = {
                label = r.label,
                level = r.level,
                isDiscovery = r.isDiscovery,
                isUnknown = r.isUnknown,
                _tfgDisplayLabel = r._tfgDisplayLabel,
                _tfgIsClassGroup = r._tfgIsClassGroup,
                _tfgClassKey = r._tfgClassKey,
                spells = r.spells, -- reference for now; we will copy if we modify
            }
        end
        return out
    end

    -- Add rank unlock entries into the *existing* brackets so we don't create duplicate "Skill N" groups.
    -- Each unlock is represented as a synthetic pseudo-spell entry within that skill bracket.
    local function addProfessionRankUnlocksIntoRows(baseRows)
        -- Skip for non-profession views. Also skip injecting synthetic unlocks for
        -- the Riding dataset (it's a skills DB modelled as a profession but
        -- should not get synthetic unlock entries which would hide the raw spells).
        if not isProfession then return baseRows end
        if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then return baseRows end

        local profName = getProfessionNameForCurrentView()

        local dbgTrainingCount = 0

        -- Build unlock tiers directly from the DB's Profession Training entries.
        -- This makes "train-at" requirements fully data-driven (e.g., Fishing sometimes requires
        -- being exactly at 225 to unlock 300).
        local unlocks = {}
        do
            local db = TFG.activeDatabase
            if type(db) == "table" then
                local function deriveCapFromTrainingBucket(bucketLvl)
                    bucketLvl = tonumber(bucketLvl) or 0
                    if bucketLvl <= 0 then return nil end

                    -- Common profession training tiers across Vanilla/TBC.
                    -- This is intentionally conservative and does not rely on cached spell data.
                    if bucketLvl <= 1 then return 75 end
                    if bucketLvl <= 50 then return 150 end
                    if bucketLvl <= 125 then return 225 end
                    if bucketLvl <= 225 then return 300 end
                    if bucketLvl <= 300 then return 375 end
                    return nil
                end

                for k, spells in pairs(db) do
                    -- Bucket keys in the DB are often numeric (e.g., [1], [50]).
                    -- Classic Lua's tonumber() expects a string; passing a number can error.
                    local bucketLvl = tonumber(tostring(k))
                    if bucketLvl and type(spells) == "table" then
                        for _, s in ipairs(spells or {}) do
                            local sSpellId = getSpellId(s)
                            if s and hasSpellCategory(s, "Profession Training") and sSpellId then
                                dbgTrainingCount = dbgTrainingCount + 1
                                if sSpellId > 0 then
                                    -- Prefer DB-provided cap if present.
                                    local newCap = tonumber(tostring(s.cap))
                                    if not newCap or newCap <= 0 then
                                        -- Next best: infer from bucket level.
                                        newCap = deriveCapFromTrainingBucket(bucketLvl)
                                    end
                                    if (not newCap or newCap <= 0) and bucketLvl >= 50 then
                                        -- Last resort: treat bucket as cap.
                                        newCap = bucketLvl
                                    end

                                    if newCap and newCap > 0 then
                                        table.insert(unlocks, {
                                            -- "trainAt" is our semantic train threshold (used in some UI text);
                                            -- for DB-driven professions, the effective requirement is bucketLvl.
                                            trainAt = bucketLvl,
                                            effectiveTrainAt = bucketLvl,
                                            displayBracket = bucketLvl,
                                            newCap = newCap,
                                            trainingSpellId = sSpellId,
                                            texture = getSpellTexture(s),
                                        })
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        table.sort(unlocks, function(a, b)
            return (tonumber(a.newCap) or 0) < (tonumber(b.newCap) or 0)
        end)

        -- Deduplicate by resulting cap (some datasets may have multiple entries that map to same cap).
        do
            local seen = {}
            local filtered = {}
            for _, u in ipairs(unlocks) do
                local cap = tonumber(u.newCap) or 0
                if cap > 0 and not seen[cap] then
                    seen[cap] = true
                    table.insert(filtered, u)
                end
            end
            unlocks = filtered
        end

        -- Track which brackets now have a synthetic unlock so we can safely suppress the
        -- corresponding raw Profession Training spell *only* when it would be a duplicate.
        local syntheticUnlockByBracket = {}

        local function inferRankNameFromCap(cap)
            cap = tonumber(cap) or 0
            if cap <= 0 then return "Rank" end
            if cap <= 75 then return "Apprentice" end
            if cap <= 150 then return "Journeyman" end
            if cap <= 225 then return "Expert" end
            if cap <= 300 then return "Artisan" end
            return "Master"
        end



        local byLevel = {}
        local discoveriesRow
        for _, r in ipairs(baseRows or {}) do
            local lvl = tonumber(tostring(r.label or ""):match("%d+"))
            if lvl then
                if not byLevel[lvl] then
                    byLevel[lvl] = {
                        label = r.label,
                        level = r.level or lvl,
                        isDiscovery = r.isDiscovery,
                        isUnknown = r.isUnknown,
                        _tfgDisplayLabel = r._tfgDisplayLabel,
                        _tfgIsClassGroup = r._tfgIsClassGroup,
                        _tfgClassKey = r._tfgClassKey,
                        spells = r.spells,
                    }
                else
                    -- Merge duplicate brackets (this can happen if we previously injected rows).
                    local target = byLevel[lvl]
                    target.spells = target.spells or {}
                    if r.spells then
                        for _, s in ipairs(r.spells) do
                            table.insert(target.spells, s)
                        end
                    end
                end
            elseif r.isDiscovery then
                discoveriesRow = r
            end
        end

        -- Rebuild baseRows from the merged map (plus Discoveries row if it exists).
        baseRows = {}
        -- Seed baseRows with any DB rows we already have.
        for _, r in pairs(byLevel) do
            baseRows[#baseRows + 1] = r
        end
        -- Also include any non-tier brackets from the DB (e.g., Skill 1, Skill 50, etc.).
        if discoveriesRow then
            baseRows[#baseRows + 1] = discoveriesRow
        end

        local profIcon = getProfessionIconForCurrentView()

    local dbgUnlockInserted = 0

        for _, u in ipairs(unlocks) do
            local newCap = tonumber(u.newCap) or 0
            local displayBracket = tonumber(u.displayBracket) or 0
            local effectiveTrainAt = tonumber(u.effectiveTrainAt) or displayBracket
            local trainAt = tonumber(u.trainAt) or effectiveTrainAt
            local rankName = tostring(u.rankName or inferRankNameFromCap(newCap))

            local row = nil
            for _, r in ipairs(baseRows) do
                local lvl = tonumber(tostring(r.label or ""):match("%d+"))
                if lvl and lvl == displayBracket then
                    row = r
                    break
                end
            end
            if not row then
                row = { label = "Skill " .. displayBracket, spells = {} }
                baseRows[#baseRows + 1] = row
            end
            -- Copy spells list before modifying so we don't mutate original row tables.
            if row.spells == nil then row.spells = {} end
            if row._tfgSpellsCopied ~= true then
                local copied = {}
                for _, s in ipairs(row.spells) do table.insert(copied, s) end
                row.spells = copied
                row._tfgSpellsCopied = true
            end

            -- Avoid inserting duplicates if Relayout gets called repeatedly.
            local already = false
            for _, s in ipairs(row.spells) do
                if s and s._tfgType == "PROFESSION_RANK_UNLOCK" and tonumber(s.required) == newCap and tonumber(s.trainAt) == trainAt then
                    already = true
                    break
                end
            end

            if not already then
                -- Put the unlock entry first so it reads like a normal skill in that bracket.
                table.insert(row.spells, 1, {
                    _tfgType = "PROFESSION_RANK_UNLOCK",
                    -- Same category as the rank spell it stands in for, so the
                    -- "Profession Training" filter shows these and not the raw spell.
                    categories = { "Profession Training" },
                    required = newCap,
                    trainAt = trainAt,
                    effectiveTrainAt = effectiveTrainAt,
                    displayBracket = displayBracket,
                    rankName = rankName,
                    texture = profIcon,
                    name = "Train " .. rankName,
                    trainingSpellId = u.trainingSpellId,
                })

                -- Record the cap this bracket's training unlocks (not just a flag)
                -- so the raw "Profession Training" spell at this bracket can be
                -- marked known by cap in entryIsKnown.
                syntheticUnlockByBracket[displayBracket] = newCap
                dbgUnlockInserted = dbgUnlockInserted + 1
            end
        end

        if profName then
            TFG_DebugLog(
                "Unlock builder",
                "prof=", tostring(profName),
                "trainingEntries=", tostring(dbgTrainingCount),
                "unlockDefs=", tostring(#unlocks),
                "unlockRowsInserted=", tostring(dbgUnlockInserted)
            )
        end

        -- Expose to the outer render loop for filtering decisions.
        baseRows._tfgSyntheticUnlockByBracket = syntheticUnlockByBracket

        -- Re-sort rows by numeric level, keeping Discoveries at the end.
        table.sort(baseRows, function(a, b)
            local function lvl(r)
                if r.isDiscovery then return TFG.DISCOVERY_BUCKET end
                return tonumber(tostring(r.label or ""):match("%d+")) or 0
            end
            return lvl(a) < lvl(b)
        end)

        return baseRows
    end

    -- Build rows differently for skill datasets when a per-file __CONFIG.mode is present.
    local db = TFG.activeDatabase
    local function buildSkillRowsFromConfig()
        if type(db) ~= "table" then return nil end
        local meta = db.__CONFIG or {}
        local mode = meta.mode
        if not mode then return nil end

        -- Mode: class -> treat top-level DB keys as class buckets (player class first)
        if mode == "class" then
            local out = {}
            local keys = {}
            local playerKey = (playerClass or ""):lower()
            -- The player's class alone unless Other Classes is on; then every
            -- class in alphabetical order, the player's among them.
            if TFG.showOtherClasses or not db[playerKey] then
                for k, v in pairs(db) do
                    if k ~= "__CONFIG" and type(v) == "table" then
                        table.insert(keys, k)
                    end
                end
                table.sort(keys, function(a,b) return a < b end)
            else
                keys[1] = playerKey
            end
            local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
            for _, k in ipairs(keys) do
                local spells = db[k] or {}
                local display = k
                if expansionObject and expansionObject.files and expansionObject.files.classes and expansionObject.files.classes[k] and expansionObject.files.classes[k].name then
                    display = expansionObject.files.classes[k].name
                else
                    display = (tostring(k):sub(1,1):upper() .. tostring(k):sub(2))
                end
                -- Use a high numeric label so existing numeric-based logic does not
                -- treat this bucket as a level threshold. Store the human-facing
                -- label separately for rendering.
                table.insert(out, { label = "Level 9999", spells = spells, _tfgDisplayLabel = display, _tfgIsClassGroup = true, _tfgClassKey = k })
            end
            return out
        end

        -- Mode: skill -> group by a numeric required/level field on each entry
        if mode == "skill" then
            local byReq = {}
            for _, bucket in pairs(db) do
                if type(bucket) == "table" then
                    for _, s in ipairs(bucket) do
                        if type(s) == "table" then
                            local req = tonumber(s.required) or tonumber(s.level) or 0
                            byReq[req] = byReq[req] or {}
                            table.insert(byReq[req], s)
                        end
                    end
                end
            end
            local out = {}
            for req, list in pairs(byReq) do
                table.insert(out, { label = "Level " .. tostring(req), spells = list })
            end
            table.sort(out, function(a,b)
                return (tonumber(a.label:match("%d+")) or 0) < (tonumber(b.label:match("%d+")) or 0)
            end)
            return out
        end

        return nil
    end

    local rowsToRender = nil
    if TFG.isSkill then
        local custom = buildSkillRowsFromConfig()
        if custom then
            rowsToRender = addProfessionRankUnlocksIntoRows(custom)
        else
            rowsToRender = addProfessionRankUnlocksIntoRows(shallowCopyRows(TFG.rows))
        end
    else
        rowsToRender = addProfessionRankUnlocksIntoRows(shallowCopyRows(TFG.rows))
    end

    local syntheticUnlockByBracket = rowsToRender and rowsToRender._tfgSyntheticUnlockByBracket
    local knownFilteredCount = 0

    local function entryIsKnown(spell, row, levelRequired)
        if not spell then return false end

        if spell._tfgType == "PROFESSION_RANK_UNLOCK" then
            local unlockCap = tonumber(spell.required) or 0
            local trainingSpellId = tonumber(spell.trainingSpellId)
            return (professionMaxCap > 0 and unlockCap > 0 and professionMaxCap >= unlockCap)
                or (trainingSpellId and trainingSpellId > 0 and IsPlayerSpell(trainingSpellId))
                or false
        end

        local spellId = getSpellId(spell)
        if isProfession then
            if not spellId or spellId <= 0 then return false end
            if TFG.RIDING_BURNING_CRUSADE
                and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE
                and spell.name
                and getSpellRank(spell) then
                local knownRank = getHighestKnownRankForSpellName(spell.name, spell)
                if knownRank and knownRank >= (getSpellRank(spell) or 0) then
                    return true
                end
            end

            -- Raw "Profession Training" rank spells (Apprentice/Journeyman/...)
            -- are known once the player's skill cap reaches the tier they unlock.
            -- IsPlayerSpell is unreliable for these, so use the per-bracket cap
            -- recorded by the rank-unlock builder (same signal the synthetic
            -- unlock entries use).
            if hasSpellCategory(spell, "Profession Training") then
                local unlockCap = syntheticUnlockByBracket and syntheticUnlockByBracket[levelRequired]
                if type(unlockCap) == "number" and professionMaxCap > 0 and professionMaxCap >= unlockCap then
                    return true
                end
            end

            return isSpellKnownDBAware(spellId, spell)
        end

        if TFG.isSkill then
            if row and row._tfgIsClassGroup then
                -- What the player knows says nothing about another class's row.
                if tostring(row._tfgClassKey):lower() ~= (playerClass or ""):lower() then return false end
                return spellId and spellId > 0 and IsPlayerSpell(spellId) or false
            end

            local required = tonumber(levelRequired) or 0
            local playerSkill = tonumber(skillLevels[resolveSelectedSkillKey()] or 0) or 0
            return playerSkill >= required
                or (spellId and spellId > 0 and IsPlayerSpell(spellId))
                or false
        end

        return isSpellKnownDBAware(spellId, spell)
    end

    local function shouldHideEntry(spell, row, levelRequired)
        -- Name-only search filter (applies to every view). TFG.searchText is
        -- stored lowercased; plain (non-pattern) substring match.
        if TFG.searchText and TFG.searchText ~= "" then
            local haystack = (spell and spell.name) and tostring(spell.name):lower() or ""
            -- Profession rank-unlock rows have an internal name like "Train Master"
            -- but display a synthetic tooltip title ("<Profession> Skill Unlock:
            -- <Rank>"). Make that wording searchable too, so e.g. "fishing skill"
            -- finds them -- matching what the tooltip shows.
            if spell and spell._tfgType == "PROFESSION_RANK_UNLOCK" then
                haystack = haystack .. " "
                    .. (profName and tostring(profName):lower() or "")
                    .. " skill unlock "
                    .. tostring(spell.rankName or ""):lower()
            end
            if not haystack:find(TFG.searchText, 1, true) then
                return true, "search"
            end
        end

        if isProfession and not isEntryAvailableInPhase(spell) then
            return true, "phase"
        end

        local isProfessionTraining = isProfession and spell and hasSpellCategory(spell, "Profession Training")

        if isProfessionTraining
            and spell._tfgType ~= "PROFESSION_RANK_UNLOCK"
            and syntheticUnlockByBracket
            and syntheticUnlockByBracket[levelRequired] then
            return true, "syntheticUnlock"
        end

        if hasCategoryFilter and TFG.selectedCategory and TFG.selectedCategory ~= "ALL" then
            local isDiscovery = row.isDiscovery or levelRequired == TFG.DISCOVERY_BUCKET
            if TFG.selectedCategory == "DISCOVERIES" then
                if not isDiscovery then return true, "category" end
            elseif not hasSpellCategory(spell, TFG.selectedCategory) then
                return true, "category"
            end
        end

        if TFG.selectedReputation and TFG.selectedReputation ~= "ALL"
            and not TFG.HasReputationFaction(spell, TFG.selectedReputation) then
            return true, "reputation"
        end

        if isTalentSpell(spell) and not TFG.showTalents and not isAnyTalentRankKnown(spell) then
            return true, "talent"
        end

        if not TFG.showEnemySpells then
            if spell.faction and spell.faction ~= playerFaction then
                return true, "faction"
            end
            if not matchesPlayerRace(spell) then
                return true, "race"
            end
        end

        -- Apply the known filter last so the fully-learned empty state only
        -- counts entries that otherwise match every active filter.
        if not TFG.showKnown and entryIsKnown(spell, row, levelRequired) then
            return true, "known"
        end

        return false, nil
    end

    -- One list icon with its overlays, tooltip and click handlers.
    local function placeIcon(spell, row, levelRequired, x, y)
        local icon = acquireEntryIcon()
        icon.tfgUnknown = row.isUnknown
        icon:SetSize(UI.ICON_SIZE, UI.ICON_SIZE)
        icon:SetPoint("TOPLEFT", x, y)
        -- Resolve texture: prefer explicit texture, then spell icon, then item icon if present.
        local tex = getSpellTexture(spell)
        if not tex then
            local sid = getSpellId(spell)
            if sid and sid > 0 then
                tex = select(3, GetSpellInfo(sid))
            else
                -- Some entries represent items (product/source) rather than spells.
                local itemId = getProductItemId(spell) or getRecipeSourceId(spell) or (spell and spell.itemId)
                if itemId then
                    tex = select(10, GetItemInfo(itemId))
                end
            end
        end
        icon:SetTexture(tex or "Interface/ICONS/INV_Misc_QuestionMark")
        icon.spellData = spell
        icon:EnableMouse(false)

        -- Known-state overlay (semi-transparent green). Textures do not receive mouse
        -- events, so this will not interfere with icon tooltip/click handlers.
        if not icon.tfgKnownOverlay then
            -- Textures don't have CreateTexture; create the overlay from the parent
            -- frame and anchor it to the icon so it doesn't interfere with mouse events.
            local ov = content:CreateTexture(nil, "OVERLAY")
            ov:SetPoint("TOPLEFT", icon, "TOPLEFT", 0, 0)
            ov:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", 0, 0)
            ov:SetColorTexture(0, 1, 0, 0.35)
            ov:Hide()
            icon.tfgKnownOverlay = ov
        end

        -- Red-state overlay (semi-transparent red) for user-marked unlearned abilities.
        if not icon.tfgRedOverlay then
            local rov = content:CreateTexture(nil, "OVERLAY")
            rov:SetPoint("TOPLEFT", icon, "TOPLEFT", 0, 0)
            rov:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", 0, 0)
            rov:SetColorTexture(1, 0, 0, 0.6)
            rov:Hide()
            icon.tfgRedOverlay = rov
        end

        -- Blue border highlight for icons with active popup.
        if not icon.tfgBlueBorder then
            local bov = content:CreateTexture(nil, "OVERLAY")
            bov:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
            bov:SetBlendMode("ADD")
            bov:SetVertexColor(0.3, 0.5, 1, 1)
            bov:SetPoint("CENTER", icon, "CENTER", 0, 0)
            bov:SetSize(UI.ICON_SIZE * 1.4, UI.ICON_SIZE * 1.4)
            bov:Hide()
            icon.tfgBlueBorder = bov
        end

        -- Clickable indicator "+" in bottom-right corner for icons with popup content
        if not icon.tfgClickableIndicator then
            local indicator = content:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
            indicator:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", -2, 2)
            indicator:SetText("+")
            indicator:SetTextColor(1, 1, 1)
            indicator:SetShadowOffset(1, -1)
            indicator:SetShadowColor(0, 0, 0, 1)
            indicator:Hide()
            icon.tfgClickableIndicator = indicator
        end

        -- Determine if this icon would show a popup. An unlock row opens the
        -- popup of its rank spell, so it is judged by that entry.
        local popupSubject = spell
        if spell and spell._tfgType == "PROFESSION_RANK_UNLOCK" then
            popupSubject = rankEntryFor(spell)
        end
        local recipeSourceId = getRecipeSourceId(popupSubject)
        -- Show recipe item if recipe_item_ids exists, regardless of source type
        local hasRecipeItem = (recipeSourceId and recipeSourceId > 0)
        local productItemId = getProductItemId(popupSubject)
        local hasProduct = (productItemId and productItemId > 0)
        local hasMaterials = (popupSubject and popupSubject.materials
            and type(popupSubject.materials) == "table" and #popupSubject.materials > 0)
        local hasSourceInfo = (popupSubject ~= nil and #TFG.GetSources(popupSubject) > 0)
        local wouldShowPopup = hasRecipeItem or hasProduct or hasMaterials or hasSourceInfo

        -- Show the clickable indicator only if popup would appear
        if wouldShowPopup and icon.tfgClickableIndicator then
            icon.tfgClickableIndicator:Show()
        elseif icon.tfgClickableIndicator then
            icon.tfgClickableIndicator:Hide()
        end

        -- Phase indicator in the top-right corner for phased
        -- profession entries. Phase 1 and unrestricted entries
        -- intentionally have no badge.
        if not icon.tfgPhaseIndicator then
            local phaseInd = content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
            phaseInd:SetPoint("TOPRIGHT", icon, "TOPRIGHT", -2, -2)
            phaseInd:SetTextColor(1, 1, 1)
            phaseInd:SetShadowOffset(1, -1)
            phaseInd:SetShadowColor(0, 0, 0, 1)
            phaseInd:Hide()
            icon.tfgPhaseIndicator = phaseInd
        end

        local iconPhase = getEffectivePhase(spell)
        if isProfession and iconPhase and iconPhase > 1 then
            icon.tfgPhaseIndicator:SetText("P" .. tostring(iconPhase))
            icon.tfgPhaseIndicator:Show()
        else
            icon.tfgPhaseIndicator:Hide()
        end

        -- Talent indicator "T" in top-right corner for talent spells in class views
        if not icon.tfgTalentIndicator then
            local talentInd = content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
            talentInd:SetPoint("TOPRIGHT", icon, "TOPRIGHT", -2, -2)
            talentInd:SetText("T")
            talentInd:SetTextColor(1, 1, 1)
            talentInd:SetShadowOffset(1, -1)
            talentInd:SetShadowColor(0, 0, 0, 1)
            talentInd:Hide()
            icon.tfgTalentIndicator = talentInd
        end

        -- Show talent indicator for talents in class views
        if isClassView and isTalentSpell(spell) and icon.tfgTalentIndicator then
            icon.tfgTalentIndicator:Show()
        elseif icon.tfgTalentIndicator then
            icon.tfgTalentIndicator:Hide()
        end

        -- Persisted red marks table
        TimbersFieldGuideDB = TimbersFieldGuideDB or {}
        TimbersFieldGuideDB.redMarked = TimbersFieldGuideDB.redMarked or {}

        if entryIsKnown(spell, row, levelRequired) then
            icon.tfgKnownOverlay:Show()
            -- If the spell became known, clear any previously set red mark
            local spellIdForMark = getSpellId(spell)
            if spellIdForMark then
                TimbersFieldGuideDB.redMarked[tostring(spellIdForMark)] = nil
                if icon.tfgRedOverlay then icon.tfgRedOverlay:Hide() end
            end
        else
            icon.tfgKnownOverlay:Hide()
            -- Show red overlay if user previously marked this unlearned ability
            local spellIdForMark = getSpellId(spell)
            if spellIdForMark and TimbersFieldGuideDB.redMarked[tostring(spellIdForMark)] then
                icon.tfgRedOverlay:Show()
            else
                icon.tfgRedOverlay:Hide()
            end
        end

        icon:SetScript("OnMouseDown", function(self, button)
            if not isIconInsideScrollViewport(self) then return end
            if button == "LeftButton" then
                -- A rank unlock row opens the popup on the rank spell it stands in
                -- for, under the row's own title. The copy is kept on the row so a
                -- second click finds the same table and toggles the popup shut.
                if self.spellData and self.spellData._tfgType == "PROFESSION_RANK_UNLOCK" then
                    local unlock = self.spellData
                    local rankEntry = rankEntryFor(unlock)
                    if not unlock._tfgPopupData and rankEntry then
                        local copy = {}
                        for k, v in pairs(rankEntry) do copy[k] = v end
                        local cap = tonumber(unlock.required) or 0
                        copy.name = ("%s Skill Unlock: %s (%d-%d)"):format(
                            tostring(profName or "Profession"), tostring(unlock.rankName or ""),
                            cap > 75 and cap - 75 or 1, cap)
                        unlock._tfgPopupData = copy
                    end
                    if unlock._tfgPopupData then
                        TFG.EnsureProfessionPopup():ShowForSpell(self, unlock._tfgPopupData)
                    end
                    return
                end

                local data = self.spellData
                local popup = TFG.EnsureProfessionPopup()
                popup:ShowForSpell(self, data)
                return
            end

            -- Right-click: allow marking unlearned class abilities with a red overlay.
            if button == "RightButton" then
                -- Allow marking in any view (class/skill/profession). Only require a valid spell id.
                local sp = self.spellData
                local sid = getSpellId(sp)
                if not sid or sid <= 0 then return end

                -- Only allow marking if the entry is currently not known
                if entryIsKnown(sp, row, levelRequired) then
                    -- If it is known, ensure red mark removed
                    TimbersFieldGuideDB = TimbersFieldGuideDB or {}
                    TimbersFieldGuideDB.redMarked = TimbersFieldGuideDB.redMarked or {}
                    TimbersFieldGuideDB.redMarked[tostring(sid)] = nil
                    if self.tfgRedOverlay then self.tfgRedOverlay:Hide() end
                    return
                end

                TimbersFieldGuideDB = TimbersFieldGuideDB or {}
                TimbersFieldGuideDB.redMarked = TimbersFieldGuideDB.redMarked or {}
                local key = tostring(sid)
                if TimbersFieldGuideDB.redMarked[key] then
                    -- Toggle off
                    TimbersFieldGuideDB.redMarked[key] = nil
                    if self.tfgRedOverlay then self.tfgRedOverlay:Hide() end
                else
                    -- Toggle on
                    TimbersFieldGuideDB.redMarked[key] = true
                    if self.tfgRedOverlay then self.tfgRedOverlay:Show() end
                end
            end
        end)

        icon:SetScript("OnEnter", function(self)
            if not isIconInsideScrollViewport(self) then
                GameTooltip:Hide()
                return
            end
            local data = self.spellData

            if data and data._tfgType == "PROFESSION_RANK_UNLOCK" then
                GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                local req = tonumber(data.required) or 0
                local trainAt = tonumber(data.effectiveTrainAt) or tonumber(data.trainAt) or levelRequired
                local rankName = (data.rankName and tostring(data.rankName) ~= "") and tostring(data.rankName) or "Rank"

                local profName = "Profession"
                do
                    local selectionInfo = TFG.GetSelectionInfo(TFG.selectedExpansion, TFG.selectedFile)
                    local child = selectionInfo and selectionInfo.child
                    if child and child.name then
                        profName = tostring(child.name)
                    end
                end
                local capText
                local capR, capG, capB = 1, 1, 1
                if professionMaxCap > 0 and req > 0 and professionMaxCap >= req then
                    capText = "Already learned"
                    capR, capG, capB = 0.5, 1, 0
                elseif professionLevel >= trainAt then
                    capText = "Trainable now"
                else
                    capText = "Trainable at " .. tostring(trainAt)
                end

                -- Show Blizzard's spell tooltip body for the matching Profession Training spell,
                -- then override the title line with our synthetic title.
                local trainingSpellId
                local db = TFG.activeDatabase
                if type(db) == "table" then
                    local bucket = db[trainAt]
                    if type(bucket) == "table" then
                        for _, s in ipairs(bucket) do
                            if s and hasSpellCategory(s, "Profession Training") and getSpellId(s) then
                                trainingSpellId = getSpellId(s)
                                break
                            end
                        end
                    end

                    -- Some professions store training unlock entries at their *cap* bracket
                    -- instead of the synthetic "trainAt" threshold (e.g., First Aid Master at [300]
                    -- while trainAt is 275). If we didn't find an exact match, choose the closest
                    -- training entry by bracket key.
                    if not trainingSpellId then
                        local bestId
                        local bestDiff
                        for k, spells in pairs(db) do
                            local lvl = tonumber(k)
                            if lvl and type(spells) == "table" then
                                for _, s in ipairs(spells or {}) do
                                    if s and hasSpellCategory(s, "Profession Training") and getSpellId(s) then
                                        local diff = math.abs(lvl - (tonumber(trainAt) or 0))
                                        if not bestDiff or diff < bestDiff then
                                            bestDiff = diff
                                            bestId = getSpellId(s)
                                        end
                                    end
                                end
                            end
                        end
                        trainingSpellId = bestId
                    end

                    if not trainingSpellId then
                        for _, spells in pairs(db) do
                            for _, s in ipairs(spells or {}) do
                                if s and hasSpellCategory(s, "Profession Training") and getSpellId(s) and (getSpellId(s) == tonumber(data.trainingSpellId)) then
                                    trainingSpellId = getSpellId(s)
                                    break
                                end
                            end
                            if trainingSpellId then break end
                        end
                    end
                end

                -- Show the skill range this rank covers: from the
                -- previous tier's cap (tiers are 75 apart) up to this
                -- rank's cap, e.g. Master = "300-375".
                local rangeLow = (req > 75) and (req - 75) or 1
                local titleText = profName .. " Skill Unlock: " .. rankName .. " (" .. tostring(rangeLow) .. "-" .. tostring(req) .. ")"
                if trainingSpellId then
                    -- Build a simple tooltip ourselves to guarantee the custom title
                    -- is shown. We include the spell name (if resolvable) as a line.
                    local sname = select(1, GetSpellInfo(trainingSpellId))
                    GameTooltip:ClearLines()
                    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                    GameTooltip:AddLine(titleText, 1, 1, 1)
                    if sname and tostring(sname) ~= "" then
                        GameTooltip:AddLine(sname, 0.9, 0.9, 0.9)
                    end
                    GameTooltip:Show()
                else
                    -- Fallback: no training spell found; show our synthetic tooltip only.
                    GameTooltip:AddLine(titleText, 1, 1, 1)
                end

                -- Where the rank comes from and what it costs, as any other entry
                -- shows it, from the rank spell this row stands in for.
                if trainingSpellId and type(TFG.activeDatabase) == "table" then
                    local shown = false
                    for _, spells in pairs(TFG.activeDatabase) do
                        for _, e in ipairs(type(spells) == "table" and spells or {}) do
                            if not shown and getSpellId(e) == trainingSpellId then
                                for _, src in ipairs(groupedSources(e)) do
                                    if not shown then GameTooltip:AddLine(" ") end
                                    GameTooltip:AddLine(buildSourceLine(src), 1, 1, 1)
                                    shown = true
                                end
                            end
                        end
                    end
                end

                GameTooltip:AddLine(" ")
                GameTooltip:AddLine(capText, capR, capG, capB)
                GameTooltip:Show()
                return
            end
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            -- Prefer showing a spell tooltip when we have a valid spell id.
            local sid = getSpellId(data)
            if sid and sid > 0 then
                GameTooltip:SetSpellByID(sid)
            else
                -- Fallback: try to show item tooltip for product/source items.
                local itemId = getProductItemId(data) or getRecipeSourceId(data) or (data and data.itemId)
                local shown = false
                if itemId and tonumber(itemId) then
                    local _, itemLink = GetItemInfo(tonumber(itemId))
                    if itemLink then
                        GameTooltip:SetHyperlink(itemLink)
                        shown = true
                    else
                        -- If item info isn't cached, SetItemByID is safer on modern clients; try it if available.
                        if GameTooltip.SetItemByID then
                            pcall(GameTooltip.SetItemByID, GameTooltip, tonumber(itemId))
                            shown = true
                        end
                    end
                end

                if not shown then
                    -- Last resort: show a simple tooltip with the entry name.
                    GameTooltip:SetText(tostring(data and data.name or ""))
                end
            end

            -- Crafting difficulty levels display (orange/yellow/green/gray)
            if TFG.HasSkillUps(data) then
                local colors = { "|cFFFF7F00", "|cFFFFFF00", "|cFF00FF00", "|cFF9D9D9D" }
                local parts = {}
                for i = 1, 4 do
                    local v = tonumber(data.levels[i] or 0) or 0
                    if v > 0 then
                        table.insert(parts, colors[i] .. tostring(v) .. "|r")
                    end
                end
                if #parts > 0 then
                    -- Check if popup would be shown
                    local tooltipRecipeId = getRecipeSourceId(data)
                    -- Show recipe item if recipe_item_ids exists, regardless of source type
                    local hasRecipeItem = (tooltipRecipeId and tooltipRecipeId > 0)
                    local tooltipProductId = getProductItemId(data)
                    local hasProduct = (tooltipProductId and tooltipProductId > 0)
                    local hasMaterials = (data and data.materials
                        and type(data.materials) == "table" and #data.materials > 0)
                    local wouldShowPopup = hasRecipeItem or hasProduct or hasMaterials

                    GameTooltip:AddLine(" ")
                    GameTooltip:AddLine(table.concat(parts, "  "))

                    -- Show one line per source (type, location, cost,
                    -- phase, faction).
                    for _, s in ipairs(groupedSources(data)) do
                        GameTooltip:AddLine("Source: " .. buildSourceLine(s), 0.8, 0.8, 0.8)
                        -- A price that is not gold, and the standing the vendor
                        -- asks for, each on a line of their own under it.
                        local currencyText = TFG.FormatCurrencies(s)
                        if currencyText then
                            GameTooltip:AddLine("Cost: " .. currencyText, 0.8, 0.8, 0.8)
                        end
                        local repText = TFG.FormatReputation(s)
                        if repText then GameTooltip:AddLine(repText) end
                    end
                    if self.tfgUnknown then
                        GameTooltip:AddLine("In the game files, but not yet seen in game.", 0.6, 0.6, 0.6, true)
                    end

                    if wouldShowPopup then
                        GameTooltip:AddLine(" ")
                        GameTooltip:AddLine("Left click for details", 1, 1, 0)
                    end
                end
            end

            -- NOTE: Source/location/cost info is intentionally not shown on the main list tooltip.
            -- It is shown only on the popup's recipe-source icon tooltip.
            -- Weapon skills are the exception: who teaches it is the point of the page.
            if row._tfgIsClassGroup then
                local sources = TFG.GetSources(data)
                GameTooltip:AddLine(" ")
                if #sources == 0 then
                    GameTooltip:AddLine("Known from character creation", 0.8, 0.8, 0.8)
                end
                for pass = 1, 2 do
                    for _, s in ipairs(sources) do
                        local enemy = s.faction and s.faction ~= playerFaction or false
                        if enemy == (pass == 2) then
                            local shade = enemy and 0.55 or 1
                            GameTooltip:AddLine(buildSourceLine(s) .. (enemy and ("  (" .. s.faction .. ")") or ""), shade, shade, shade)
                        end
                    end
                end
                -- The character level the weapon master asks for (Polearms: 20).
                local required = tonumber(data.level)
                if required and required > 1 then
                    local short = playerLevel < required
                    GameTooltip:AddLine("Requires level " .. required, 1, short and 0.13 or 1, short and 0.13 or 1)
                end
            end

            local currentPhase = tonumber(TFG.GetCurrentPhase(TFG.selectedExpansion))
            local entryPhase = getEffectivePhase(data)
            if isProfession and currentPhase and entryPhase and entryPhase > currentPhase then
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine("Introduced in Phase " .. tostring(entryPhase), 0.45, 0.75, 1)
            end

            local tooltipRank = getSpellRank(data)
            if tooltipRank and tooltipRank > 0 then
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine("Rank: |cFFFFFFFF" .. tooltipRank)
            end

            local tooltipCost = getTrainingCost(data)
            if tooltipCost and tooltipCost > 0 then
                local costText = TFG.FormatCost(tooltipCost)
                if costText then
                    local color = (GetMoney() < tooltipCost) and "|cFFFF0000" or "|cFFFFFFFF"
                    GameTooltip:AddLine(" ")
                    GameTooltip:AddLine("Cost: " .. color .. costText)
                end
            end

            if isTalentSpell(data) then GameTooltip:AddLine(" ") GameTooltip:AddLine("Talent") end
            local restrictedRaces = formatRestrictedRaces(data)
            if restrictedRaces then
                GameTooltip:AddLine(" ")
                GameTooltip:AddLine("Races: |cFFFFFFFF" .. restrictedRaces)
            end
            if data.faction then GameTooltip:AddLine(" ") GameTooltip:AddLine("Faction: |cFFFFFFFF" .. data.faction) end

            GameTooltip:Show()
            -- A weapon in a city's group shows that city's map under its
            -- tooltip, pinning the masters there who teach it.
            local group = self.tfgGroup
            if group and group.hasPosition then
                local only = {}
                for _, s in ipairs(TFG.GetSources(data)) do
                    local trainer, place = tostring(s.location or ""):match("^(.-),%s*(.+)$")
                    if place == group.place then only[trainer] = true end
                end
                showMapUnderTooltip(group, only)
            end
        end)

        icon:SetScript("OnLeave", hideGroupMap)
        return icon
    end

    -- Weapon skills: a class's icons grouped by the city that teaches them, so one
    -- trip shows everything there is to learn there. A weapon taught in two cities
    -- shows under both; one taught by both Orgrimmar masters shows once. Locations
    -- read "Trainer, City". The other faction's cities only with Other Spells on.
    local function trainerGroups(row, levelRequired)
        local groups, byPlace = {}, {}
        local function group(place, faction, rank)
            local g = byPlace[place]
            if not g then
                g = { place = place, faction = faction, rank = rank, trainers = {}, positions = {}, spells = {}, seen = {} }
                byPlace[place] = g
                groups[#groups + 1] = g
            end
            return g
        end
        local function add(g, spell, trainer)
            if trainer and not g.seen[trainer] then
                g.seen[trainer] = true
                g.trainers[#g.trainers + 1] = trainer
            end
            if not g.seen[spell] then
                g.seen[spell] = true
                g.spells[#g.spells + 1] = spell
            end
        end
        for _, spell in ipairs(row.spells) do
            if not shouldHideEntry(spell, row, levelRequired) then
                local sources = TFG.GetSources(spell)
                local placed = false
                for _, s in ipairs(sources) do
                    local trainer, place = tostring(s.location or ""):match("^(.-),%s*(.+)$")
                    local enemy = s.faction and s.faction ~= playerFaction
                    if place and (not enemy or TFG.showEnemySpells) then
                        local g = group(place, s.faction, enemy and 1 or 0)
                        add(g, spell, trainer)
                        local pos = s.position
                        if trainer and not g.positions[trainer] and type(pos) == "table"
                            and tonumber(pos.map) and tonumber(pos.x) and tonumber(pos.y) then
                            g.positions[trainer] = pos
                            g.hasPosition = true
                        end
                        placed = true
                    end
                end
                if not placed then
                    add(group(#sources == 0 and "Starting skill" or "Other faction only", nil, 2), spell)
                end
            end
        end
        table.sort(groups, function(a, b)
            if a.rank ~= b.rank then return a.rank < b.rank end
            local oa, ob = CITY_ORDER[a.place] or 99, CITY_ORDER[b.place] or 99
            if oa ~= ob then return oa < ob end
            return a.place < b.place
        end)
        -- Same city, same label on every class's row.
        for _, g in ipairs(groups) do table.sort(g.trainers) end
        return groups
    end

    local GROUP_GAP, GROUP_LINE_GAP, GROUP_LABEL_GAP, GROUP_PAD = 16, 12, 4, 6
    -- Lays the groups out left to right, each on its panel, wrapping like the
    -- icons do. Returns the new yOffset below the row.
    local function placeTrainerGroups(row, levelRequired, top, width)
        local step = UI.ICON_SIZE + UI.ICON_SPACING
        local perLine = math.max(1, math.floor((width - 2 * GROUP_PAD + UI.ICON_SPACING) / step))
        local x, lineTop, lineHeight = 0, top, 0
        for _, g in ipairs(trainerGroups(row, levelRequired)) do
            local label = acquireRowLabel()
            label:SetFont(label:GetFont(), 12, "OUTLINE")
            label:SetTextColor(1, 0.82, 0)
            local text = g.place
            if #g.trainers > 0 then
                text = text .. "  |cffe0d8c0(" .. table.concat(g.trainers, ", ") .. ")|r"
            end
            if g.rank == 1 then text = text .. "  |cffff6060" .. tostring(g.faction) .. "|r" end
            label:SetText(text)
            local labelHeight = label:GetStringHeight()
            local count = #g.spells
            local cols = math.min(count, perLine)
            local lines = math.ceil(count / perLine)
            local labelWidth = label:GetStringWidth()
            local groupWidth = math.max(labelWidth, cols * step - UI.ICON_SPACING) + 2 * GROUP_PAD
            local groupHeight = labelHeight + GROUP_LABEL_GAP + lines * step - UI.ICON_SPACING + 2 * GROUP_PAD
            if x > 0 and x + groupWidth > width then
                x, lineTop, lineHeight = 0, lineTop - lineHeight - GROUP_LINE_GAP, 0
            end
            acquireGroupPanel(x, lineTop, groupWidth, groupHeight)
            local innerLeft, innerTop = x + GROUP_PAD, lineTop - GROUP_PAD
            label:SetPoint("TOPLEFT", innerLeft, innerTop)
            -- The label opens the city map once the data says where a trainer stands.
            if g.hasPosition then
                local hit = acquireGroupHit()
                hit.group = g
                hit:SetPoint("TOPLEFT", content, "TOPLEFT", innerLeft, innerTop)
                hit:SetSize(labelWidth, labelHeight)
                hit:SetScript("OnEnter", function(self)
                    if isIconInsideScrollViewport(self) then showGroupMap(self, self.group) end
                end)
                hit:SetScript("OnLeave", hideGroupMap)
            end
            local iconTop = innerTop - labelHeight - GROUP_LABEL_GAP
            for i, spell in ipairs(g.spells) do
                local col, line = (i - 1) % perLine, math.floor((i - 1) / perLine)
                local icon = placeIcon(spell, row, levelRequired, innerLeft + col * step, iconTop - line * step)
                icon.tfgGroup = g
            end
            x = x + groupWidth + GROUP_GAP
            lineHeight = math.max(lineHeight, groupHeight)
        end
        return lineTop - lineHeight - UI.ROW_PADDING_BOTTOM
    end

    for _, row in ipairs(rowsToRender) do
        local visibleSpells = 0
        local levelRequired = tonumber(row.level) or tonumber(row.label:match("%d+")) or 0

        for _, spell in ipairs(row.spells) do
            if (not isProfession) or isEntryAvailableInPhase(spell) then
                if spell.faction or getRestrictedRaces(spell) then enemySpellsCount = enemySpellsCount + 1 end
                if isTalentSpell(spell) then talentCount = talentCount + 1 end
            end
            -- Weapon skills hide the other faction's trainers, not entries.
            if row._tfgIsClassGroup then
                for _, s in ipairs(TFG.GetSources(spell)) do
                    if s.faction and s.faction ~= playerFaction then
                        enemySpellsCount = enemySpellsCount + 1
                        break
                    end
                end
            end

            local hide, hideReason = shouldHideEntry(spell, row, levelRequired)
            if not hide then
                visibleSpells = visibleSpells + 1
            elseif hideReason == "known" then
                knownFilteredCount = knownFilteredCount + 1
            end
        end

        if visibleSpells > 0 then
            local label = acquireRowLabel()
            label:SetFont(label:GetFont(), 18, "OUTLINE")

            -- Determine active DB mode (e.g. class/skill/level) to influence header coloring.
            local activeMode = nil
            if TFG and TFG.activeDatabase and type(TFG.activeDatabase) == "table" then
                activeMode = TFG.activeDatabase.__CONFIG and TFG.activeDatabase.__CONFIG.mode
            end

            if isProfession then
                -- Match class-style coloring:
                --  * Green if your profession skill meets/exceeds the bracket
                --  * White otherwise
                --  * Do not color Discoveries or Unknown
                if not row.isDiscovery and not row.isUnknown and ((tostring(activeMode) == "level" and playerLevel >= levelRequired) or (tostring(activeMode) ~= "level" and professionLevel >= levelRequired)) then
                    label:SetTextColor(0.5, 1, 0)
                else
                    label:SetTextColor(1, 1, 1)
                end
            else
                -- If this row was created from a class-mode skill grouping, prefer
                -- the neutral (white) header color and skip numeric-level checks.
                if row and row._tfgIsClassGroup then
                    -- Color the player's class bucket green to match class-ability coloring.
                    if row._tfgClassKey and tostring(row._tfgClassKey):lower() == ((playerClass or ""):lower()) then
                        label:SetTextColor(0.5, 1, 0)
                    else
                        label:SetTextColor(1,1,1)
                    end
                else
                local function _getSelectedSkillLevel()
                    local key = resolveSelectedSkillKey()
                    return tonumber(skillLevels[key] or 0) or 0
                end
                if (isProfession and professionLevel >= levelRequired) or ((TFG.isSkill and not isProfession and _getSelectedSkillLevel() >= levelRequired) or (not TFG.isSkill and ((playerClass:upper() == TFG.selectedFile:upper()) and playerLevel >= levelRequired)) or (tostring(activeMode) == "level" and playerLevel >= levelRequired)) then
                    label:SetTextColor(0.5, 1, 0)
                else
                    label:SetTextColor(1, 1, 1)
                end
                end
            end

            label:SetPoint("TOPLEFT", 0, yOffset)
                if row and row._tfgDisplayLabel then
                    label:SetText(row._tfgDisplayLabel)
                else
                    if isProfession then
                        if row.isDiscovery then
                            label:SetText("Discoveries")
                        elseif row.isUnknown then
                            label:SetText("Unknown")
                        else
                            -- If this profession-like view originates from a skill DB configured
                            -- with mode = "level", prefer the "Level" label instead of "Skill".
                            local mode = nil
                            if TFG and TFG.activeDatabase and type(TFG.activeDatabase) == "table" then
                                mode = TFG.activeDatabase.__CONFIG and TFG.activeDatabase.__CONFIG.mode
                            end
                            if mode and tostring(mode) == "level" then
                                label:SetText("Level " .. levelRequired)
                            else
                                label:SetText("Skill " .. levelRequired)
                            end
                        end
                    else
                        label:SetText("Level " .. levelRequired)
                    end
                end
            yOffset = yOffset - label:GetHeight() - 8

            if row._tfgIsClassGroup then
                yOffset = placeTrainerGroups(row, levelRequired, yOffset, contentWidth)
            else
            local xOffset = 0
            local rowMaxHeight = UI.ICON_SIZE

            for _, spell in ipairs(row.spells) do
                local hide = shouldHideEntry(spell, row, levelRequired)

                if not hide then
                    if xOffset + UI.ICON_SIZE > contentWidth then
                        xOffset = 0
                        yOffset = yOffset - rowMaxHeight - UI.ICON_SPACING
                    end

                    placeIcon(spell, row, levelRequired, xOffset, yOffset)
                    xOffset = xOffset + UI.ICON_SIZE + UI.ICON_SPACING
                end
            end

            yOffset = yOffset - rowMaxHeight - UI.ROW_PADDING_BOTTOM
            end

            totalSpellsShown = totalSpellsShown + visibleSpells
        end
    end

    local isKnownShown = knownApplicable
    local isEnemySpellsShown = enemySpellsCount > 0
    local isTalentShown = talentCount > 0

    -- Publish which filters are applicable to the current view so an external
    -- navigation shell can show/hide its own filter controls, then notify it
    -- that a relayout finished. (isKnownShown reflects the engine's own
    -- show/hide rules even though the legacy checkbox is parented to a hidden
    -- frame, because IsShown() tracks the object's flag, not effective view.)
    TFG._filterAvailability = {
        known = isKnownShown and true or false,
        talent = isTalentShown,
        enemy = isEnemySpellsShown,
        otherClasses = TFG.IsClassGroupedView(),
    }
    if type(TFG.OnAfterRelayout) == "function" then
        pcall(TFG.OnAfterRelayout)
    end

    if not TFG.viewAvailable then
        message1:SetText("This view is not available for this expansion")
        message1:SetShown(true)
        message2:SetText("Please select a different view")
        message2:SetShown(true)
    elseif totalSpellsShown == 0 and knownFilteredCount > 0 and not TFG.showKnown then
        message1:SetText("You've learned everything!")
        message1:SetShown(true)
        message2:SetText("Use the checkboxes above to see your spells")
        message2:SetShown(true)
    elseif totalSpellsShown == 0 then
        message1:SetText("No entries match the current filters")
        message1:SetShown(true)
        message2:SetText("Try another category, phase, or checkbox")
        message2:SetShown(true)
    else
        message1:SetShown(false)
        message2:SetShown(false)
    end

    content:SetHeight(-yOffset)
    lastVerticalScroll = nil
    updateIconMouseState()
end

local relayoutQueued = false

-- "Is the guide currently on screen?" Once the engine is mounted into the new
-- shell, visibility follows the host pane rather than the hidden legacy frame.
local function isGuideVisible()
    if TFG._engineMounted then
        return TFG._hostPane and TFG._hostPane:IsVisible() or false
    end
    return frame:IsShown()
end
TFG.IsGuideVisible = isGuideVisible

function TFG.RequestRelayout()
    TFG._stateDirty = true
    if not frame or not isGuideVisible() or relayoutQueued then return end

    relayoutQueued = true
    local function run()
        relayoutQueued = false
        if not isGuideVisible() then return end
        TFG._stateDirty = false
        frame:Relayout()
    end

    if C_Timer and C_Timer.After then
        C_Timer.After(0, run)
    else
        run()
    end
end

local stateEvents = CreateFrame("Frame")
for _, eventName in ipairs({
    "PLAYER_ENTERING_WORLD",
    "PLAYER_LEVEL_UP",
    "SKILL_LINES_CHANGED",
    "SPELLS_CHANGED",
    "LEARNED_SPELL_IN_TAB",
}) do
    pcall(stateEvents.RegisterEvent, stateEvents, eventName)
end
stateEvents:SetScript("OnEvent", function()
    TFG.RefreshPlayerState()
    TFG.RequestRelayout()
end)

frame:HookScript("OnShow", function()
    if TFG._stateDirty then
        TFG.RefreshPlayerState()
        TFG.RequestRelayout()
    end
end)

-- ==========================================================================
-- External host mount (new navigation shell)
-- ==========================================================================
-- Re-host the live render output -- the scroll view, the empty-state messages,
-- and the profession popup -- inside a content pane owned by the new UI shell.
-- The legacy frame stays hidden, so its dropdowns and checkboxes (children of
-- that hidden frame) never render; the shell supplies its own navigation and
-- filter controls and drives the same TFG.* state. Width tracking switches to
-- the mounted pane automatically via getRenderWidth().
function TFG.MountEngineInto(pane)
    if not pane then return end
    TFG._engineMounted = true
    TFG._hostPane = pane

    scrollFrame:SetParent(pane)
    scrollFrame:ClearAllPoints()
    -- Leave room on the right for the scrollbar that ships with the template.
    scrollFrame:SetPoint("TOPLEFT", pane, "TOPLEFT", 0, 0)
    scrollFrame:SetPoint("BOTTOMRIGHT", pane, "BOTTOMRIGHT", -22, 0)

    message1:SetParent(pane)
    message1:ClearAllPoints()
    message1:SetPoint("CENTER", pane, "CENTER", 0, 20)
    message2:SetParent(pane)
    message2:ClearAllPoints()
    message2:SetPoint("CENTER", pane, "CENTER", 0, -20)

    if TFG.professionPopup then
        TFG.professionPopup:SetParent(pane)
    end

    if frame:IsShown() then
        frame:Hide()
    end
    TFG.RequestRelayout()
end

frame:Relayout()
