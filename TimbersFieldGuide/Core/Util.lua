local _, TFG = ...

function TFG.FormatCost(copper)
    if not copper or copper <= 0 then return nil end

    local g = math.floor(copper / 10000)
    local s = math.floor((copper % 10000) / 100)
    local c = copper % 100

    local text = ""
    if g > 0 then
        text = text .. g .. "|TInterface\\MoneyFrame\\UI-GoldIcon:12:12:0:0|t "
    end
    if s > 0 then
        text = text .. s .. "|TInterface\\MoneyFrame\\UI-SilverIcon:12:12:0:0|t "
    end
    if c > 0 then
        text = text .. c .. "|TInterface\\MoneyFrame\\UI-CopperIcon:12:12:0:0|t"
    end

    return text
end

-- Name and icon of one `currencies` row. The authored name covers a client
-- that cannot resolve the id; the icon is nil then.
function TFG.ResolveCostComponent(c)
    local name, icon
    if c.currency_id then
        name, icon = TFG.GetCurrencyInfo(c.currency_id)
    elseif c.item_id then
        name = TFG.GetItemInfo(c.item_id)
        icon = select(10, TFG.GetItemInfo(c.item_id))
    end
    return name or c.name or "?", icon
end

-- A source's non-gold price as text, for lines that cannot carry a hoverable
-- icon: "240 <icon> [Merchant's Favor]". The brackets set a currency or item
-- apart from gold. Nil when the price is gold only.
function TFG.FormatCurrencies(source)
    local parts = {}
    for _, c in ipairs(source.currencies or {}) do
        local name, icon = TFG.ResolveCostComponent(c)
        if icon then
            parts[#parts + 1] = ("%d |T%s:12:12:0:0|t [%s]"):format(tonumber(c.qty) or 1, tostring(icon), name)
        else
            parts[#parts + 1] = ("%d [%s]"):format(tonumber(c.qty) or 1, name)
        end
    end
    if #parts > 0 then return table.concat(parts, "  ") end
end

local STANDING_RANK = { Neutral = 4, Friendly = 5, Honored = 6, Revered = 7, Exalted = 8 }

-- A source's reputation requirement as "Azeroth Commerce Authority (Honored)",
-- green when the player has the standing and red when not. Nil without one.
function TFG.FormatReputation(source)
    local rep = source.reputation
    if not rep or not rep.standing then return nil end
    local text = rep.faction and ("%s (%s)"):format(rep.faction, rep.standing) or tostring(rep.standing)
    local needed = STANDING_RANK[rep.standing]
    local have = TFG.GetFactionStanding(rep.faction_id, rep.faction)
    -- A faction missing from the reputation list has not been met: not enough.
    local met = needed ~= nil and have ~= nil and have >= needed
    return (met and "|cff33cc33" or "|cffe04040") .. text .. "|r", met
end

function TFG.isAlliance()
    return UnitFactionGroup("player") == "Alliance"
end
