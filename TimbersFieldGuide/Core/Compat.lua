local _, TFG = ...

-- Client API compatibility layer.
--
-- Classic Era / TBC Anniversary run the pre-Cataclysm API. WoW: Forever runs
-- the Midnight (retail) engine, which renamed or removed a number of globals.
-- This file is the only place allowed to touch a client-specific global; the
-- rest of the addon calls the TFG.* wrappers below so it reads the same on
-- every client.

-- Pre-Cataclysm clients expose the skill window via GetNumSkillLines /
-- GetSkillLineInfo. Later engines drop those and only expose professions via
-- GetProfessions / GetProfessionInfo. Returns a list of { name, rank, maxRank }
-- for every non-header skill the player has.
function TFG.GetPlayerSkillLines()
    local out = {}
    if GetNumSkillLines and GetSkillLineInfo then
        for i = 1, GetNumSkillLines() do
            local name, isHeader, _, rank, _, _, maxRank = GetSkillLineInfo(i)
            if name and not isHeader then
                out[#out + 1] = { name = name, rank = rank, maxRank = maxRank }
            end
        end
    elseif GetProfessions and GetProfessionInfo then
        -- GetProfessions returns fixed slots with nil holes, so walk by count.
        local count = select("#", GetProfessions())
        for i = 1, count do
            local index = select(i, GetProfessions())
            if index then
                local name, _, rank, maxRank = GetProfessionInfo(index)
                if name then
                    out[#out + 1] = { name = name, rank = rank, maxRank = maxRank }
                end
            end
        end
    end
    return out
end

-- WoW: Forever's character window has a column of side tabs down its right edge
-- (CharacterFrame.ModeTabs); no other client does. Returns the tab container,
-- its ordered tab list and the template the tabs are built from, or nil.
function TFG.GetCharacterSideTabs()
    local modeTabs = CharacterFrame and CharacterFrame.ModeTabs
    if modeTabs and modeTabs.Tabs then
        return modeTabs, modeTabs.Tabs, "LargeSideTabButtonTemplate"
    end
end

-- The retail-engine spellbook lives in a load-on-demand Blizzard addon and
-- keeps its category tabs in a tab system along the top. Returns the spellbook
-- frame and that tab system, or nil (not loaded yet, or a pre-Cata client).
TFG.SPELLBOOK_ADDON = "Blizzard_PlayerSpells"

function TFG.GetSpellBookTabs()
    local book = PlayerSpellsFrame and PlayerSpellsFrame.SpellBookFrame
    if book and book.CategoryTabSystem then
        return book, book.CategoryTabSystem
    end
end

-- Newer engines moved spell/item lookups under C_Spell / C_Item and removed
-- the globals. Keep the old positional return shape so call sites are unchanged.
function TFG.GetSpellInfo(spell)
    if GetSpellInfo then return GetSpellInfo(spell) end
    local info = C_Spell and C_Spell.GetSpellInfo and C_Spell.GetSpellInfo(spell)
    if not info then return nil end
    return info.name, nil, info.iconID, info.castTime, info.minRange, info.maxRange, info.spellID, info.originalIconID
end

-- Name and icon of a currency (Merchant's Favor on WoW: Forever), or nil on a
-- client that does not know the id.
function TFG.GetCurrencyInfo(currencyID)
    local info = C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo and C_CurrencyInfo.GetCurrencyInfo(currencyID)
    if info then return info.name, info.iconFileID end
end

-- The player's standing with a faction as the game numbers it (4 Neutral,
-- 5 Friendly, 6 Honored, 7 Revered, 8 Exalted), by id when the data has one, else
-- by name from the reputation list. Nil when it cannot be told: a faction the
-- character has not met, or a name sitting under a collapsed header.
function TFG.GetFactionStanding(factionID, name)
    if C_Reputation and C_Reputation.GetFactionDataByID then
        local data = factionID and C_Reputation.GetFactionDataByID(factionID)
        if data then return data.reaction end
        if name and C_Reputation.GetNumFactions and C_Reputation.GetFactionDataByIndex then
            for i = 1, C_Reputation.GetNumFactions() do
                data = C_Reputation.GetFactionDataByIndex(i)
                if data and data.name == name then return data.reaction end
            end
        end
        return nil
    end
    if factionID and GetFactionInfoByID then
        local _, _, standing = GetFactionInfoByID(factionID)
        if standing then return standing end
    end
    if name and GetNumFactions and GetFactionInfo then
        for i = 1, GetNumFactions() do
            local factionName, _, standing = GetFactionInfo(i)
            if factionName == name then return standing end
        end
    end
end

-- Fill a tooltip for one non-gold price component, as the merchant window does
-- for the icons in its price column. SetCurrencyByID is retail-engine only.
function TFG.SetCostTooltip(tooltip, component)
    if component.currency_id and tooltip.SetCurrencyByID then
        tooltip:SetCurrencyByID(component.currency_id)
    elseif component.item_id then
        tooltip:SetItemByID(component.item_id)
    else
        tooltip:SetText(component.name or "")
    end
end

TFG.GetItemInfo = GetItemInfo or (C_Item and C_Item.GetItemInfo)
TFG.GetItemQualityColor = GetItemQualityColor or (C_Item and C_Item.GetItemQualityColor)
