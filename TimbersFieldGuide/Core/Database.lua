local _, TFG = ...

-- TFG.selectedExpansion holds the internal *database key* (CLASSIC_ERA /
-- BURNING_CRUSADE / WRATH_CLASSIC), not a display label. The field name is kept
-- for now to avoid churn across the codebase.
TFG.selectedExpansion = "CLASSIC_ERA" -- Default version
TFG.selectedFile = select(2, UnitClass("player")) -- Default player class
TFG.activeDatabase = {}
TFG.rows = {}
TFG.isSkill = false
TFG.viewAvailable = true
TFG.selectedPhase = nil

-- Buckets in the 900s are groups the list shows differently from a skill
-- bracket, sorted after every real skill level. The gaps leave room for more.
TFG.DISCOVERY_BUCKET = 930
-- Entries that are in the game files but whose learn skill nobody has seen yet.
-- Shown last, under "Unknown", instead of crowding skill 1.
TFG.UNKNOWN_BUCKET = 980

-- Select the database for the detected game version. Unknown future versions
-- fall back by client family so their shared base data remains usable.
local clientInterface = tonumber((select(4, GetBuildInfo()))) or 0
local foreverVersion = TFG.GAME_VERSIONS and TFG.GAME_VERSIONS.FOREVER
local _, activeGameVersion
if TFG.GetActiveGameVersion then
    _, activeGameVersion = TFG.GetActiveGameVersion()
end
if not TFG.GetCurrentPhase then
    TFG.GetCurrentPhase = function() return "ALL" end
end
if activeGameVersion then
    TFG.selectedExpansion = activeGameVersion.databaseKey
elseif WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC then
    TFG.selectedExpansion = "WRATH_CLASSIC"
elseif WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
    TFG.selectedExpansion = "BURNING_CRUSADE"
elseif foreverVersion and clientInterface >= foreverVersion.interfaceMin
    and clientInterface <= foreverVersion.interfaceMax then
    -- A Forever client the registry did not match (a season id, say, or a
    -- project id that moved again). The interface range is the one thing about
    -- the family that has held, so it decides here.
    TFG.selectedExpansion = "FOREVER"
else
    TFG.selectedExpansion = "CLASSIC_ERA"
end

-- ==========================================================================
-- List Database Files
-- ==========================================================================

-- Every game has the same pages; what differs is which data tables its toc
-- loaded. A page whose table is missing (Jewelcrafting and Riding outside The
-- Burning Crusade) has no `file` and is not offered. The tables are named
-- <PAGE>_<game key>. `skillLine` is the profession's skill line id.
local function gameRegistry(key, name, shamanColor)
    local function data(page)
        return TFG[page .. "_" .. key]
    end
    return {
        key = key,
        name = name,
        files = {
            classes = {
                druid = { name = "Druid", color = TFG.CLASS_COLORS["DRUID"], file = data("DRUID") },
                hunter = {
                    name = "Hunter", color = TFG.CLASS_COLORS["HUNTER"], file = data("HUNTER"),
                    children = {
                        { key = "pet-skills", name = "Pet Skills", file = data("HUNTER_PETS") },
                    },
                },
                mage = { name = "Mage", color = TFG.CLASS_COLORS["MAGE"], file = data("MAGE") },
                paladin = { name = "Paladin", color = TFG.CLASS_COLORS["PALADIN"], file = data("PALADIN") },
                priest = { name = "Priest", color = TFG.CLASS_COLORS["PRIEST"], file = data("PRIEST") },
                rogue = {
                    name = "Rogue", color = TFG.CLASS_COLORS["ROGUE"], file = data("ROGUE"),
                    children = {
                        { key = "poisons", name = "Poisons", file = data("ROGUE_POISONS") },
                    },
                },
                shaman = { name = "Shaman", color = shamanColor, file = data("SHAMAN") },
                warlock = {
                    name = "Warlock", color = TFG.CLASS_COLORS["WARLOCK"], file = data("WARLOCK"),
                    children = {
                        { key = "demon-spells", name = "Demon Spells", file = data("WARLOCK_PETS") },
                    },
                },
                warrior = { name = "Warrior", color = TFG.CLASS_COLORS["WARRIOR"], file = data("WARRIOR") },
            },
            skills = {
                professions = {
                    name = "Professions",
                    children = {
                        -- Primary professions
                        { key = "alchemy", name = "Alchemy", skillLine = 171, file = data("ALCHEMY") },
                        { key = "blacksmithing", name = "Blacksmithing", skillLine = 164, file = data("BLACKSMITHING") },
                        { key = "enchanting", name = "Enchanting", skillLine = 333, file = data("ENCHANTING") },
                        { key = "engineering", name = "Engineering", skillLine = 202, file = data("ENGINEERING") },
                        { key = "jewelcrafting", name = "Jewelcrafting", skillLine = 755, file = data("JEWELCRAFTING") },
                        { key = "leatherworking", name = "Leatherworking", skillLine = 165, file = data("LEATHERWORKING") },
                        { key = "tailoring", name = "Tailoring", skillLine = 197, file = data("TAILORING") },
                        { key = "mining", name = "Mining", skillLine = 186, file = data("MINING") },
                        { key = "herbalism", name = "Herbalism", skillLine = 182, file = data("HERBALISM") },
                        { key = "skinning", name = "Skinning", skillLine = 393, file = data("SKINNING") },
                        -- Divider: secondary professions follow
                        { name = "SecondaryProfessionsDivider", isHeader = true },
                        { key = "cooking", name = "Cooking", skillLine = 185, file = data("COOKING") },
                        { key = "first-aid", name = "First Aid", skillLine = 129, file = data("FIRST_AID") },
                        { key = "fishing", name = "Fishing", skillLine = 356, file = data("FISHING") },
                    },
                },
                skills = {
                    name = "Skills",
                    children = {
                        -- Forever has no Riding skill line; its weapon skills are
                        -- seeded from Classic Era until weapon masters are scanned.
                        { key = "riding", name = "Riding", file = data("RIDING") },
                        { key = "weapon-skills", name = "Weapon Skills", file = data("WEAPON_SKILLS") },
                    },
                },
            },
        },
    }
end

-- Vanilla's Shaman shared the Paladin's pink; The Burning Crusade gave it blue.
local VANILLA_SHAMAN, TBC_SHAMAN = TFG.CLASS_COLORS["PALADIN"], TFG.CLASS_COLORS["SHAMAN"]

TFG.DATABASE_FILES = {
    CLASSIC_ERA = gameRegistry("CLASSIC_ERA", "Classic Era", VANILLA_SHAMAN),
    BURNING_CRUSADE = gameRegistry("BURNING_CRUSADE", "The Burning Crusade", TBC_SHAMAN),
    FOREVER = gameRegistry("FOREVER", "Forever", VANILLA_SHAMAN),
    WRATH_CLASSIC = gameRegistry("WRATH_CLASSIC", "Wrath of the Lich King", TBC_SHAMAN),
}


-- A client shows its own game only. Names, icons and tooltips come from the
-- running client, so another game's page would show this client's numbers under
-- that game's heading (Forever kept Battle Shout's spell ids and changed what
-- they do). Each client's toc loads only its own game's data to match.
for key in pairs(TFG.DATABASE_FILES) do
    if key ~= TFG.selectedExpansion then TFG.DATABASE_FILES[key] = nil end
end

-- Whether any data table of a registry entry was loaded by the toc.
local function hasLoadedData(node)
    for key, value in pairs(node) do
        if key == "file" then return true end
        if type(value) == "table" and hasLoadedData(value) then return true end
    end
    return false
end

-- A client that read another client's toc has the code and none of its data.
-- Say so instead of opening an empty guide.
local ownGame = TFG.DATABASE_FILES[TFG.selectedExpansion]
if ownGame and not hasLoadedData(ownGame.files or {}) then
    TFG.dataMissing = true
    print(("|cffff6060Timber's Field Guide:|r no %s data was loaded. The game read a .toc file meant for another version of WoW; please report this with your game version."):format(
        tostring(ownGame.name)))
end

local function normalizeChildKey(name)
    return tostring(name or ""):lower():gsub("[^%w]+", "-"):gsub("^%-+", ""):gsub("%-+$", "")
end

function TFG.MakeChildSelection(parentKey, child, childIndex)
    if not parentKey or not child then return nil end
    return tostring(parentKey):lower() .. "::" .. tostring(child.key or normalizeChildKey(child.name) or childIndex)
end

-- The registry profession a skill from TFG.GetPlayerSkillLines is: by skill line
-- id where the client gives one, so it holds in any language, else by the
-- English name. Nil for a skill that is not a profession here.
function TFG.FindProfession(skill)
    local game = TFG.DATABASE_FILES[TFG.selectedExpansion]
    local professions = game and game.files and game.files.skills and game.files.skills.professions
    for _, child in ipairs(professions and professions.children or {}) do
        if child.key and ((skill.skillLine and child.skillLine == skill.skillLine) or child.name == skill.name) then
            return child
        end
    end
end

function TFG.GetSelectionInfo(expansion, selection)
    local expansionObject = type(expansion) == "table"
        and expansion
        or TFG.DATABASE_FILES[tostring(expansion or TFG.selectedExpansion):upper()]
    if not expansionObject or not expansionObject.files then return nil end

    local selected = tostring(selection or TFG.selectedFile or ""):lower()
    local parentKey, childToken = selected:match("^([^:]+)::(.+)$")
    if not parentKey or not childToken then return nil end

    local classes = expansionObject.files.classes or {}
    local skills = expansionObject.files.skills or {}
    local parent = classes[parentKey] or skills[parentKey]
    if not parent or not parent.children then return nil end

    local childIndex = tonumber(childToken)
    local child = childIndex and parent.children[childIndex] or nil
    if not child then
        for index, candidate in ipairs(parent.children) do
            local candidateKey = tostring(candidate.key or normalizeChildKey(candidate.name)):lower()
            if candidateKey == childToken then
                child = candidate
                childIndex = index
                break
            end
        end
    end

    return {
        expansion = expansionObject,
        parentKey = parentKey,
        parent = parent,
        parentType = classes[parentKey] and "classes" or "skills",
        child = child,
        childIndex = childIndex,
        childKey = child and tostring(child.key or normalizeChildKey(child.name)):lower() or childToken,
    }
end

-- Generate rows from a given database
function TFG.GenerateRows(database)
    local rows = {}

    for level, spells in pairs(database or {}) do
        -- Only include numeric buckets; ignore metadata keys like __CONFIG.
        local n = tonumber(tostring(level))
        if n and n > 0 then
            rows[#rows + 1] = {
                label = "Level " .. tostring(n),
                level = n,
                isDiscovery = n == TFG.DISCOVERY_BUCKET,
                isUnknown = n == TFG.UNKNOWN_BUCKET,
                spells = spells,
            }
        end
    end

    table.sort(rows, function(a, b)
        local function keyVal(r)
            if not r or not r.label then return 0 end
            if r.isDiscovery then return TFG.DISCOVERY_BUCKET end
            local m = tostring(r.label):match("%d+")
            return tonumber(m) or 0
        end
        return keyVal(a) < keyVal(b)
    end)

    return rows
end

-- Load database dynamically based on selected class and expansion
function TFG.LoadDatabase(fileName, expansion)
    -- (debug prints removed)
    TFG.selectedFile = fileName or TFG.selectedFile
    TFG.selectedExpansion = expansion or TFG.selectedExpansion

    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion:upper()]
    if expansionObject then
        local selectedKey = TFG.selectedFile:lower()
        local parent, parentType
        TFG.viewAvailable = false

        if expansionObject["files"]["classes"][selectedKey] then
            parent = expansionObject["files"]["classes"][selectedKey]
            parentType = "classes"
        elseif expansionObject["files"]["skills"][selectedKey] then
            parent = expansionObject["files"]["skills"][selectedKey]
            parentType = "skills"
        end

        -- Submenu selections use stable "parentKey::childKey" tokens. The
        -- resolver also accepts legacy numeric child indexes for compatibility.
        local selectionInfo = TFG.GetSelectionInfo(expansionObject, selectedKey)
        if selectionInfo then
            local child = selectionInfo.child
            if child and type(child.file) == "table" then
                TFG.selectedFile = TFG.MakeChildSelection(selectionInfo.parentKey, child, selectionInfo.childIndex)
                TFG.activeDatabase = child.file
                TFG.viewAvailable = true
                -- (debug prints removed)
                -- Treat child items as the same type as the parent for filtering rules.
                parentType = selectionInfo.parentType
            else
                TFG.activeDatabase = {}
            end
        elseif parent then
            if type(parent.file) == "table" then
                TFG.activeDatabase = parent.file
                TFG.viewAvailable = true
            else
                TFG.activeDatabase = {}
            end
        else
            TFG.activeDatabase = {}
        end

        --[[
        local count = 0
        for _ in pairs(TFG.activeDatabase) do count = count + 1 end
        if count == 0 then
            print("Couldn't load database '" .. fileName .. "' from expansion: " .. expansion)
        end
        --]]

        -- If this file is a skill, then we need to treat it differently
        if (parentType == "skills") then
            TFG.isSkill = true
        else
            TFG.isSkill = false
        end
    else
        --print("Couldn't load expansion database: " .. expansion)
        TFG.activeDatabase = {}
        TFG.viewAvailable = false
    end

    TFG.rows = TFG.GenerateRows(TFG.activeDatabase)

    -- Update window background based on selected class when possible.
    do
        local bgClass = "warrior"
        local sel = (TFG.selectedFile or ""):lower()
        local selectionInfo = TFG.GetSelectionInfo(expansionObject, sel)
        if selectionInfo then
            -- If the parent is a class, use it; otherwise leave default.
            if selectionInfo.parentType == "classes" then
                bgClass = selectionInfo.parentKey
            end
        else
            if expansionObject and expansionObject.files and expansionObject.files.classes and expansionObject.files.classes[sel] then
                bgClass = sel
            end
        end
        pcall(function() TFG.SetBackground(bgClass) end)
    end

    if TFG.Relayout then
        TFG.Relayout()
    end
end

-- Initial load
TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
