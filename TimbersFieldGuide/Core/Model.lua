local _, TFG = ...

-- Data model: recipe/source/phase accessors. Pure data-in -> value-out;
-- no frames or player state. Consumers read these via the TFG.* exports below.

-- Effective phase = the earliest phase the entry can be obtained. A top-level
-- entry.phase is an explicit override; otherwise it is the minimum across the
-- entry's sources, where a source with no phase counts as launch. Returns nil
-- when nothing constrains the phase (always available).
local function getEffectivePhase(spell)
    if not spell then return nil end
    if spell.phase ~= nil then return tonumber(spell.phase) end
    local best
    for _, s in ipairs(TFG.GetSources(spell)) do
        local p = tonumber(s.phase) or 1
        if not best or p < best then best = p end
    end
    return best
end
TFG.GetEffectivePhase = getEffectivePhase

local function isEntryAvailableInPhase(spell)
    local entryPhase = getEffectivePhase(spell)
    if entryPhase == nil then return true end
    if TFG.selectedPhase == "ALL" then return true end
    local selectedPhase = tonumber(TFG.selectedPhase)
        or tonumber(TFG.GetCurrentPhase(TFG.selectedExpansion))
    if not selectedPhase then
        -- Unknown and completed versions must favor showing the entry.
        return true
    end
    return entryPhase <= selectedPhase
end

-- ==========================================================================
-- Data structure compatibility helpers (supports both old and new formats)
-- ==========================================================================
-- Get spell ID from ability object (supports both 'id' and 'spell_id')
local function getSpellId(spell)
    if not spell then return nil end
    return spell.spell_id or spell.id
end

-- Get icon/texture from ability object (supports both 'texture' and 'icon')
-- New format uses short icon names, old format uses full paths
-- Also handles numeric texture IDs returned by GetSpellInfo
local function getSpellTexture(spell)
    if not spell then return nil end
    local tex = spell.icon or spell.texture
    if tex == nil then return nil end
    -- If it's a number (numeric texture ID from GetSpellInfo), return it directly
    if type(tex) == "number" then
        return tex
    end
    -- Convert to string for string operations
    tex = tostring(tex)
    if tex == "" then return nil end
    -- If it's a numeric string (texture ID), return as number
    if tonumber(tex) then
        return tonumber(tex)
    end
    -- If it already has Interface/ICONS/, return as-is
    if string.find(tex, "Interface/ICONS/") or string.find(tex, "Interface\\ICONS\\") then
        return tex
    end
    -- Otherwise, prepend the path
    return "Interface/ICONS/" .. tex
end

-- Get spell rank from ability object (handles both number and string)
local function getSpellRank(spell)
    if not spell then return nil end
    return tonumber(spell.rank)
end

-- Check if spell is a talent (supports both 'talent' field and 'type == "Talent"')
local function isTalentSpell(spell)
    if not spell then return false end
    return spell.talent or (spell.type == "Talent")
end

-- Check if player knows ANY rank of a given talent (by matching name + icon).
-- This allows showing all ranks of a talent the player has invested in,
-- even when "All Talents" checkbox is unchecked.
local function isAnyTalentRankKnown(spell)
    if not spell then return false end
    if not isTalentSpell(spell) then return false end

    local targetName = spell.name and tostring(spell.name) or ""
    local targetIcon = spell.icon and tostring(spell.icon) or ""

    if targetName == "" then return false end
    local key = targetName .. "\031" .. targetIcon
    return TFG._knownTalentKeys and TFG._knownTalentKeys[key] or false
end

-- Check if spell has a specific category
local function hasSpellCategory(spell, category)
    if not spell or not category then return false end
    if spell.category then return spell.category == category end
    if spell.categories and type(spell.categories) == "table" then
        for _, cat in ipairs(spell.categories) do
            if cat == category then return true end
        end
    end
    return false
end

-- Whether an entry gives skill-ups. `levels` always starts with the skill it is
-- learned at; only a recipe goes on to yellow, green and grey. Find Minerals,
-- Smelting and the profession's own ranks carry that first value alone.
function TFG.HasSkillUps(entry)
    local levels = entry and entry.levels
    if type(levels) ~= "table" then return false end
    for i = 2, 4 do
        if (tonumber(levels[i]) or 0) > 0 then return true end
    end
    return false
end

-- Whether any of an entry's sources asks for standing with this faction.
local function hasReputationFaction(entry, faction)
    if not entry or not faction or type(entry.source) ~= "table" then return false end
    for _, s in ipairs(entry.source) do
        if type(s) == "table" and s.reputation and s.reputation.faction == faction then return true end
    end
    return false
end
TFG.HasReputationFaction = hasReputationFaction

-- Get training cost from ability object (supports both 'cost' and 'source.cost')
local function getTrainingCost(spell)
    if not spell then return nil end
    -- Check old format first
    if spell.cost and tonumber(spell.cost) then return tonumber(spell.cost) end
    -- Check new format
    if spell.source and spell.source.cost and tonumber(spell.source.cost) then
        return tonumber(spell.source.cost)
    end
    return nil
end

-- Get product item ID from ability object (supports both 'itemId' and 'item_id')
local function getProductItemId(spell)
    if not spell or not spell.product then return nil end
    return tonumber(spell.product.item_id) or tonumber(spell.product.itemId)
end

-- Get product quantity from ability object (supports both 'quantity' and 'qty')
local function getProductQty(spell)
    if not spell or not spell.product then return 1 end
    return tonumber(spell.product.qty) or tonumber(spell.product.quantity) or 1
end

-- Get material item ID (supports both 'itemId' and 'item_id')
local function getMaterialItemId(mat)
    if not mat then return nil end
    return tonumber(mat.item_id) or tonumber(mat.itemId)
end

-- Get material quantity (supports both 'quantity' and 'qty')
local function getMaterialQty(mat)
    if not mat then return 1 end
    return tonumber(mat.qty) or tonumber(mat.quantity) or 1
end

-- Normalize one raw source object: numeric-coerce the id/cost/phase fields and
-- return a fresh table so callers can sort/annotate without mutating DB data.
local function normalizeSource(s)
    if type(s) ~= "table" then return nil end
    return {
        type = s.type,
        cost = s.cost,
        currencies = s.currencies,
        skill = tonumber(s.skill),
        location = s.location,
        position = s.position,
        reputation = s.reputation,
        faction = s.faction,
        races = s.races,
        phase = tonumber(s.phase),
        item_id = tonumber(s.item_id),
        quest_id = tonumber(s.quest_id),
        quest_name = s.quest_name,
    }
end

-- Read an entry's `source` as an array of normalized source objects (or {} when
-- absent). Every consumer reads sources through this seam.
function TFG.GetSources(entry)
    if not entry or not entry.source then return {} end
    local out = {}
    for i = 1, #entry.source do
        out[#out + 1] = normalizeSource(entry.source[i])
    end
    return out
end

-- Primary recipe item ID = earliest-phase source's item_id (launch when untagged).
local function getRecipeSourceId(spell)
    local bestId, bestPhase
    for _, s in ipairs(TFG.GetSources(spell)) do
        if s.item_id and s.item_id > 0 then
            local p = s.phase or 1
            if not bestId or p < bestPhase then
                bestId, bestPhase = s.item_id, p
            end
        end
    end
    return bestId
end

-- Concise display label for a source type (legacy "Item" splits on cost).
local function sourceTypeLabel(s)
    local t = s.type
    if t == "Item" then
        if s.cost and tonumber(s.cost) and tonumber(s.cost) > 0 then return "Vendor" end
        return "Recipe"
    end
    return t or "Recipe"
end

-- Sources that differ only in where they are, like one recipe sold for the same
-- price by nine vendors or one quest offered in several places, share a key.
-- Anything else (trainers, drops, a different price) gets none and stays apart.
local function sourceGroupKey(s)
    local label = sourceTypeLabel(s)
    if label == "Quest" then
        local quest = s.quest_name or (s.quest_id and tostring(s.quest_id))
        if not quest then return nil end
        return table.concat({ "Quest", quest, tostring(s.item_id), tostring(s.faction), tostring(s.phase) }, "|")
    end
    if label ~= "Vendor" then return nil end
    local parts = { "Vendor", tostring(s.item_id), tostring(s.cost), tostring(s.faction), tostring(s.phase), tostring(s.skill) }
    for _, c in ipairs(s.currencies or {}) do
        parts[#parts + 1] = ("%s:%s:%s"):format(tostring(c.currency_id), tostring(c.item_id), tostring(c.qty))
    end
    if s.reputation then
        parts[#parts + 1] = tostring(s.reputation.faction) .. ":" .. tostring(s.reputation.standing)
    end
    return table.concat(parts, "|")
end

local function inZone(location, zone)
    return location == zone or location:sub(-(#zone + 2)) == ", " .. zone
end

-- Collapse sources that differ only in place into one: the first of them, with
-- `count` (how many were merged) and `locations` (every place named, with the
-- races a place is limited to). The place shown leads with one only the
-- player's race can use (`isOwnRace(source)`, true for a source with no race
-- limit), then one in `zone`, the player's current zone. Both are optional.
-- Takes the normalized copies from GetSources, so it may annotate them.
function TFG.GroupSources(sources, zone, isOwnRace)
    local out, byKey = {}, {}
    for _, s in ipairs(sources) do
        local key = sourceGroupKey(s)
        local group = key and byKey[key]
        if group then
            group.members[#group.members + 1] = s
        else
            s.members = { s }
            out[#out + 1] = s
            if key then byKey[key] = s end
        end
    end
    for gi, g in ipairs(out) do
        local members = g.members
        if #members > 1 then
            local function rank(m)
                local r = 0
                if isOwnRace and m.races and isOwnRace(m) then r = r + 2 end
                if zone and zone ~= "" and m.location and inZone(m.location, zone) then r = r + 1 end
                return r
            end
            for i, m in ipairs(members) do m._order = i end
            table.sort(members, function(a, b)
                local ra, rb = rank(a), rank(b)
                if ra ~= rb then return ra > rb end
                return a._order < b._order
            end)
            -- The leading member stands for the group; it carries the same key.
            if members[1] ~= g then
                members[1].members = members
                out[gi] = members[1]
                g = members[1]
            end
        end
        g.count = #members
        g.locations = {}
        for _, m in ipairs(members) do
            if m.location and m.location ~= "" then
                local place = tostring(m.location)
                if m.races and #m.races > 0 then place = place .. " (" .. table.concat(m.races, ", ") .. ")" end
                g.locations[#g.locations + 1] = place
            end
        end
    end
    -- A card whose way in is for the player's race goes first (Bear Form: a
    -- Skyborne sees Strength and Mercy before Body and Heart). Order otherwise kept.
    if isOwnRace then
        for i, g in ipairs(out) do g._order = i end
        local function own(g) return (g.races and isOwnRace(g)) and 1 or 0 end
        table.sort(out, function(a, b)
            local oa, ob = own(a), own(b)
            if oa ~= ob then return oa > ob end
            return a._order < b._order
        end)
    end
    return out
end

-- "Taleen Shimmerthread, Zephras Isle and 8 more" for a merged source; the plain
-- location otherwise. "More" counts other places, not other sources: both Power
-- over Poison quests start with Dendrite Starblaze, so that card names just him.
-- Nil when there is nothing to name.
function TFG.FormatSourcePlaces(s)
    local count = s.count or 1
    local first = s.location and s.location ~= "" and tostring(s.location) or nil
    if count <= 1 then return first end
    if not first then return ("%d places"):format(count) end
    local places, others = { [first] = true }, 0
    for _, m in ipairs(s.members or {}) do
        if m.location and m.location ~= "" and not places[m.location] then
            places[m.location] = true
            others = others + 1
        end
    end
    if others == 0 then return first end
    return ("%s and %d more"):format(first, others)
end

local MIDDOT = "\194\183"  -- UTF-8 U+00B7, kept out of source as raw bytes

-- Build the compact one-line summary for a source, e.g. "Honor Hold (Honored) . 5g".
-- Leads with the descriptive location (which already names the vendor/drop, so the
-- faction is implied), falling back to the type word only when there is no
-- location. Segments are joined by a muted middot.
-- "Requires Tailoring (150)" for a source that asks for more skill than the
-- recipe's own bracket (it can be learned earlier some other way). Nil otherwise.
function TFG.FormatSourceSkill(s)
    if not s.skill or s.skill <= 0 then return nil end
    local profession = TFG.GetProfessionName and TFG.GetProfessionName() or nil
    return ("Requires %s (%d)"):format(profession or "skill", s.skill)
end

local function buildSourceLine(s)
    local primary = TFG.FormatSourcePlaces(s) or sourceTypeLabel(s)
    local segs = { primary }
    local skillText = TFG.FormatSourceSkill(s)
    if skillText then segs[#segs + 1] = skillText end
    if s.cost and tonumber(s.cost) and tonumber(s.cost) > 0 then
        local costText = TFG.FormatCost(s.cost)
        if costText then segs[#segs + 1] = costText end
    end
    if s.phase and s.phase > 1 then
        segs[#segs + 1] = "|cff77bbffPhase " .. tostring(s.phase) .. "|r"
    end
    return table.concat(segs, "  |cff808080" .. MIDDOT .. "|r  ")
end

-- Resolve a human-readable quest title for a quest source, with API fallbacks
-- and a final fall-back to a name authored in the data.
local function resolveQuestTitle(s)
    local questId = s.quest_id
    if not questId or questId <= 0 then return nil end
    local title
    if C_QuestLog and C_QuestLog.GetTitleForQuestID then
        title = C_QuestLog.GetTitleForQuestID(questId)
    end
    if (not title or title == "") and QuestUtils_GetQuestName then
        title = QuestUtils_GetQuestName(questId)
    end
    if (not title or title == "") and s.quest_name and s.quest_name ~= "" then
        title = s.quest_name
    end
    if title and title ~= "" then return title end
    return nil
end


local function getMaxExplicitPhase(database)
    local maxPhase = 1
    for _, spells in pairs(database or {}) do
        if type(spells) == "table" then
            for _, spell in ipairs(spells) do
                local phase = getEffectivePhase(spell)
                if phase and phase > maxPhase then
                    maxPhase = phase
                end
            end
        end
    end
    return maxPhase
end

-- Exports
TFG.MIDDOT = MIDDOT
TFG.GetSpellId = getSpellId
TFG.GetSpellTexture = getSpellTexture
TFG.GetSpellRank = getSpellRank
TFG.IsTalentSpell = isTalentSpell
TFG.IsAnyTalentRankKnown = isAnyTalentRankKnown
TFG.HasSpellCategory = hasSpellCategory
TFG.GetTrainingCost = getTrainingCost
TFG.GetProductItemId = getProductItemId
TFG.GetProductQty = getProductQty
TFG.GetMaterialItemId = getMaterialItemId
TFG.GetMaterialQty = getMaterialQty
TFG.GetRecipeSourceId = getRecipeSourceId
TFG.SourceTypeLabel = sourceTypeLabel
TFG.BuildSourceLine = buildSourceLine
TFG.ResolveQuestTitle = resolveQuestTitle
TFG.IsEntryAvailableInPhase = isEntryAvailableInPhase
TFG.GetMaxExplicitPhase = getMaxExplicitPhase
