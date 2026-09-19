local _, TFG = ...

-- Launcher buttons attached to Blizzard windows.
--
-- Each button is our own frame anchored next to Blizzard's tabs. It is never
-- registered with Blizzard's tab code and never writes to Blizzard's frames:
-- tainting the spellbook or character window breaks casting and gear swaps in
-- combat.
--
-- SavedVariables:
--   TimbersFieldGuideDB.frameButtons = { character = true, spellbook = true }

local ICON = "Interface/AddOns/TimbersFieldGuide/Media/logo"

-- name -> label used in chat messages
local LABELS = {
    character = "character window",
    spellbook = "spellbook",
}

local buttons = {}

local function ensureDB()
    TimbersFieldGuideDB = TimbersFieldGuideDB or {}
    TimbersFieldGuideDB.frameButtons = TimbersFieldGuideDB.frameButtons or {}
    for name in pairs(LABELS) do
        if TimbersFieldGuideDB.frameButtons[name] == nil then
            TimbersFieldGuideDB.frameButtons[name] = true
        end
    end
end

local function setButtonShown(name, shown)
    ensureDB()
    TimbersFieldGuideDB.frameButtons[name] = shown
    if buttons[name] then
        buttons[name]:SetShown(shown)
    end
end

local function openButtonMenu(name)
    if not TFG._frameButtonDropdown then
        TFG._frameButtonDropdown = CreateFrame("Frame", "TFG_FrameButtonDropdown", UIParent, "UIDropDownMenuTemplate")
    end

    local function initMenu(self, level)
        level = level or 1
        if level ~= 1 then return end

        local info = UIDropDownMenu_CreateInfo()
        info.text = TFG.NAME or "Timber's Field Guide"
        info.isTitle = true
        info.notCheckable = true
        UIDropDownMenu_AddButton(info, level)

        info = UIDropDownMenu_CreateInfo()
        info.text = "Hide this button"
        info.notCheckable = true
        info.func = function()
            setButtonShown(name, false)
            print((TFG.NAME or "Timber's Field Guide") .. ": " .. LABELS[name] .. " button hidden. To show it again, type /tfg button " .. name .. " show")
            CloseDropDownMenus()
        end
        UIDropDownMenu_AddButton(info, level)

        info = UIDropDownMenu_CreateInfo()
        info.text = "Close"
        info.notCheckable = true
        info.func = function() CloseDropDownMenus() end
        UIDropDownMenu_AddButton(info, level)
    end

    UIDropDownMenu_Initialize(TFG._frameButtonDropdown, initMenu, "MENU")
    ToggleDropDownMenu(1, nil, TFG._frameButtonDropdown, "cursor", 0, 0)
end

local function onButtonClick(name, mouseButton)
    if mouseButton == "LeftButton" then
        if TFG.ToggleMainUI then
            TFG.ToggleMainUI()
        end
    elseif mouseButton == "RightButton" then
        openButtonMenu(name)
    end
end

local function showButtonTooltip(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -4, -4)
    GameTooltip:AddLine(TFG.NAME or "Timber's Field Guide")
    GameTooltip:AddLine("Left-click: Toggle window", 1, 1, 1)
    GameTooltip:AddLine("Right-click: Options", 1, 1, 1)
    GameTooltip:Show()
end

local function hideButtonTooltip()
    GameTooltip:Hide()
end

-- Light a button while the guide is open, like Blizzard's selected tab.
local function followGuideWindow(setChecked)
    setChecked(TFG.frame and TFG.frame:IsShown() or false)
    if TFG.frame then
        TFG.frame:HookScript("OnShow", function() setChecked(true) end)
        TFG.frame:HookScript("OnHide", function() setChecked(false) end)
    end
end

-- Character window (WoW: Forever side tabs) --------------------------------

-- Blizzard hides some tabs and restacks the rest, so sit under whichever
-- visible tab is last.
local function anchorCharacterButton()
    local modeTabs, tabs = TFG.GetCharacterSideTabs()
    local last
    for _, tab in ipairs(tabs) do
        if tab:IsShown() then
            last = tab
        end
    end

    buttons.character:ClearAllPoints()
    if last then
        buttons.character:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -2)
    else
        buttons.character:SetPoint("TOPLEFT", modeTabs, "TOPLEFT")
    end
end

local function createCharacterButton()
    local modeTabs, _, template = TFG.GetCharacterSideTabs()
    if not modeTabs or buttons.character then return end

    ensureDB()

    -- Blizzard's side tab template only ever touches the frame it is on.
    local button = CreateFrame("Frame", "TFG_CharacterTabButton", modeTabs, template)
    buttons.character = button
    button:SetFillToInterior(true)
    button.Icon:SetTexture(ICON)

    button:SetCustomOnMouseUpHandler(function(_, mouseButton, upInside)
        if upInside then
            onButtonClick("character", mouseButton)
        end
    end)
    button:SetScript("OnEnter", showButtonTooltip)
    button:SetScript("OnLeave", hideButtonTooltip)

    followGuideWindow(function(checked) button:SetChecked(checked) end)

    modeTabs:HookScript("OnShow", anchorCharacterButton)
    anchorCharacterButton()
    button:SetShown(TimbersFieldGuideDB.frameButtons.character)
end

-- Spellbook (retail-engine category tabs) -----------------------------------

-- The art is rebuilt by hand from TabSystemButtonArtTemplate's square mode.
-- Don't instantiate that template instead: its SetSquareMode writes a spacing
-- value shared by every tab system in the game, which would taint them all.
local function createSpellBookButton()
    local book, tabSystem = TFG.GetSpellBookTabs()
    if not book or buttons.spellbook then return end

    ensureDB()

    local button = CreateFrame("Button", "TFG_SpellBookTabButton", book)
    buttons.spellbook = button
    button:SetSize(44, 32)
    -- The tab system resizes to fit its tabs, so its right edge is always just
    -- past the last one. 1 is the tab system's own spacing.
    button:SetPoint("BOTTOMLEFT", tabSystem, "BOTTOMRIGHT", 1, 0)

    local icon = button:CreateTexture(nil, "ARTWORK")
    icon:SetSize(36, 35)
    icon:SetPoint("CENTER")
    icon:SetTexture(ICON)

    local mask = button:CreateMaskTexture()
    mask:SetAtlas("SquareMask")
    mask:SetPoint("TOPLEFT", icon, "TOPLEFT", 0, -2)
    mask:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", -2, 0)
    icon:AddMaskTexture(mask)

    local border = button:CreateTexture(nil, "ARTWORK", nil, 1)
    border:SetAtlas("spellbook-Tab-Frame-C60", true)
    border:SetPoint("BOTTOM", 0, 1)

    local borderActive = button:CreateTexture(nil, "ARTWORK", nil, 1)
    borderActive:SetAtlas("spellbook-Tab-Frame-Glow-C60", true)
    borderActive:SetPoint("BOTTOM", 0, 1)

    local glow = button:CreateTexture(nil, "ARTWORK", nil, 1)
    glow:SetAtlas("spellbook-Tab-Frame-glow-gradient-C60", true)
    glow:SetPoint("BOTTOM", 0, 0)

    button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    button:SetScript("OnClick", function(_, mouseButton)
        if mouseButton == "LeftButton" then
            PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
        end
        onButtonClick("spellbook", mouseButton)
    end)
    button:SetScript("OnEnter", showButtonTooltip)
    button:SetScript("OnLeave", hideButtonTooltip)

    followGuideWindow(function(checked)
        border:SetShown(not checked)
        borderActive:SetShown(checked)
        glow:SetShown(checked)
    end)

    button:SetShown(TimbersFieldGuideDB.frameButtons.spellbook)
end

-- Public API
TFG.FrameButtons = TFG.FrameButtons or {}

function TFG.FrameButtons:HandleSlash(args)
    args = (args or "")
    args = (strtrim and strtrim(args)) or args
    args = args:lower()

    -- Accept only commands that start with "button".
    local head, name, action = string.match(args, "^(%S+)%s*(%S*)%s*(%S*)$")
    if head ~= "button" then
        return false
    end

    if not LABELS[name] or (action ~= "" and action ~= "show" and action ~= "hide") then
        print((TFG.NAME or "Timber's Field Guide") .. ": usage: /tfg button <character|spellbook> [show|hide]")
        return true
    end

    ensureDB()
    local shown = action == "show" or (action == "" and not TimbersFieldGuideDB.frameButtons[name])
    setButtonShown(name, shown)
    print((TFG.NAME or "Timber's Field Guide") .. ": " .. LABELS[name] .. " button " .. (shown and "shown" or "hidden"))
    return true
end

-- Blizzard's startup UI is fully loaded by PLAYER_LOGIN, saved variables too.
-- The spellbook loads on demand, usually the first time it is opened.
local ev = CreateFrame("Frame")
ev:RegisterEvent("PLAYER_LOGIN")
ev:RegisterEvent("ADDON_LOADED")
ev:SetScript("OnEvent", function(_, event, addonName)
    if event == "PLAYER_LOGIN" then
        createCharacterButton()
        createSpellBookButton()
    elseif addonName == TFG.SPELLBOOK_ADDON and IsLoggedIn() then
        -- Before login our saved variables may not be in yet; PLAYER_LOGIN
        -- picks the button up instead.
        createSpellBookButton()
    end
end)
