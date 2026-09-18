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

-- Newer engines moved spell/item lookups under C_Spell / C_Item and removed
-- the globals. Keep the old positional return shape so call sites are unchanged.
function TFG.GetSpellInfo(spell)
    if GetSpellInfo then return GetSpellInfo(spell) end
    local info = C_Spell and C_Spell.GetSpellInfo and C_Spell.GetSpellInfo(spell)
    if not info then return nil end
    return info.name, nil, info.iconID, info.castTime, info.minRange, info.maxRange, info.spellID, info.originalIconID
end

TFG.GetItemInfo = GetItemInfo or (C_Item and C_Item.GetItemInfo)
TFG.GetItemQualityColor = GetItemQualityColor or (C_Item and C_Item.GetItemQualityColor)
