local _, TFG = ...

TFG.UI = {
    FRAME_WIDTH        = 1000,
    FRAME_HEIGHT       = 600,
    TITLEBAR_HEIGHT    = 44,

    ICON_SIZE          = 40,   -- updated from 48
    ICON_SPACING       = 8,
    ROW_PADDING_BOTTOM = 24,
    TEXT_ICON_SPACING  = 6,

    FRAME_PADDING_X    = 48,
}

-- The character-creation class icon atlas, and each class's corner of it
-- (fallback for a client without the global).
TFG.CLASS_ICON_TEXTURE = "Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES"
TFG.CLASS_ICON_TCOORDS = _G.CLASS_ICON_TCOORDS or {
    WARRIOR = { 0, 0.25, 0, 0.25 },
    MAGE    = { 0.25, 0.5, 0, 0.25 },
    ROGUE   = { 0.5, 0.75, 0, 0.25 },
    DRUID   = { 0.75, 1.0, 0, 0.25 },
    HUNTER  = { 0, 0.25, 0.25, 0.5 },
    SHAMAN  = { 0.25, 0.5, 0.25, 0.5 },
    PRIEST  = { 0.5, 0.75, 0.25, 0.5 },
    WARLOCK = { 0.75, 1.0, 0.25, 0.5 },
    PALADIN = { 0, 0.25, 0.5, 0.75 },
}

TFG.CLASS_COLORS = {
    DEATH_KNIGHT = "|cFFC41F3B",
    DEMON_HUNTER = "|cFFA330C9",
    DRUID = "|cFFFF7D0A",
    HUNTER = "|cFFABD473",
    MAGE = "|cFF69CCF0",
    MONK = "|cFF00FF96",
    PALADIN = "|cFFF58CBA",
    PRIEST = "|cFFFFFFFF",
    ROGUE = "|cFFFFF569",
    SHAMAN = "|cFF0070DE",
    WARLOCK = "|cFF9482C9",
    WARRIOR = "|cFFC79C6E",
}
