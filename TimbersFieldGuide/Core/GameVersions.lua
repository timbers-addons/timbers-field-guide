local _, TFG = ...

-- Runtime game versions are identified independently from the databases they
-- use. Multiple versions can therefore share one database without appearing as
-- separate choices in the navigation UI.
TFG.GAME_VERSIONS = {
    CLASSIC_ERA = {
        projectID = WOW_PROJECT_CLASSIC,
        expansionLevel = LE_EXPANSION_CLASSIC,
        seasonID = 0,
        databaseKey = "CLASSIC_ERA",
    },
    CLASSIC_HARDCORE = {
        projectID = WOW_PROJECT_CLASSIC,
        expansionLevel = LE_EXPANSION_CLASSIC,
        seasonID = 3,
        databaseKey = "CLASSIC_ERA",
    },
    CLASSIC_FRESH_HARDCORE = {
        projectID = WOW_PROJECT_CLASSIC,
        expansionLevel = LE_EXPANSION_CLASSIC,
        seasonID = 12,
        databaseKey = "CLASSIC_ERA",
    },
    SEASON_OF_DISCOVERY = {
        projectID = WOW_PROJECT_CLASSIC,
        expansionLevel = LE_EXPANSION_CLASSIC,
        seasonID = 2,
        databaseKey = "CLASSIC_ERA",
    },
    TBC_ANNIVERSARY = {
        projectID = WOW_PROJECT_BURNING_CRUSADE_CLASSIC,
        expansionLevel = LE_EXPANSION_BURNING_CRUSADE,
        seasonID = 125,
        databaseKey = "BURNING_CRUSADE",
        interfaceMin = 20500,
        interfaceMax = 20599,
        currentPhase = 3,

        -- Add dated transitions when Blizzard announces an exact launch time.
        -- activatesAt is a 10-digit Unix timestamp in UTC; put the readable
        -- YYYY-MM-DD HH:MM UTC value in its trailing comment for legibility.
        -- phaseSchedule = {
        --     { phase = 3, activatesAt = 1787868000 }, -- 2026-08-27 22:00 UTC
        -- },
    },
    -- WoW: Forever runs the retail engine and reports itself as mainline with
    -- expansion level 0 and no season (seen on 1.60.1, interface 16001), so the
    -- interface range is the only thing that tells it from retail.
    FOREVER = {
        projectID = WOW_PROJECT_MAINLINE,
        expansionLevel = LE_EXPANSION_CLASSIC,
        seasonID = 0,
        databaseKey = "FOREVER",
        interfaceMin = 16000,
        interfaceMax = 16999,
    },
    WRATH_CLASSIC = {
        projectID = WOW_PROJECT_WRATH_CLASSIC,
        expansionLevel = LE_EXPANSION_WRATH_OF_THE_LICH_KING,
        seasonID = 0,
        databaseKey = "WRATH_CLASSIC",
    },
}

local function getActiveSeasonID()
    if C_Seasons and C_Seasons.GetActiveSeason then
        return tonumber(C_Seasons.GetActiveSeason()) or 0
    end
    return 0
end

local function resolveActiveGameVersion()
    local projectID = WOW_PROJECT_ID
    local expansionLevel = GetClassicExpansionLevel()
    local seasonID = getActiveSeasonID()
    local interface = tonumber((select(4, GetBuildInfo())))

    for key, version in pairs(TFG.GAME_VERSIONS) do
        local interfaceMatches =
            (not version.interfaceMin or (interface and interface >= version.interfaceMin))
            and (not version.interfaceMax or (interface and interface <= version.interfaceMax))

        if version.projectID == projectID
            and version.expansionLevel == expansionLevel
            and version.seasonID == seasonID
            and interfaceMatches
        then
            return key, version
        end
    end

    return nil, nil
end

local function getActiveGameVersion()
    local ok, key, version = pcall(resolveActiveGameVersion)
    if not ok then
        TFG._gameVersionDetectionError = key
        return nil, nil
    end
    TFG._gameVersionDetectionError = nil
    return key, version
end

local function getCurrentPhase(databaseKey)
    local _, version = getActiveGameVersion()
    if not version or (databaseKey and version.databaseKey ~= databaseKey) then
        return "ALL"
    end

    local currentPhase = tonumber(version.currentPhase)
    local latestActivation
    local now = GetServerTime()

    for _, release in ipairs(version.phaseSchedule or {}) do
        local phase = tonumber(release.phase)
        local activatesAt = tonumber(release.activatesAt)
        if phase
            and activatesAt
            and now >= activatesAt
            and (not latestActivation or activatesAt > latestActivation)
        then
            currentPhase = phase
            latestActivation = activatesAt
        end
    end

    return currentPhase or "ALL"
end

TFG.GetActiveGameVersion = getActiveGameVersion
TFG.GetCurrentPhase = getCurrentPhase
