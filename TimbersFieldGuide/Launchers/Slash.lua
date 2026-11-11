local _, TFG = ...

SLASH_TFG1 = "/tfg"
SLASH_TFG2 = "/timbersfieldguide"
local function printHelp()
    print("Timber's Field Guide:")
    print("  /tfg - show or hide the window")
    print("  /tfg reset - reset the window's position and size")
    print("  /tfg minimap [show|hide] - the minimap button")
    print("  /tfg button <character|spellbook> [show|hide] - the buttons on the character window and spellbook")
end

SlashCmdList["TFG"] = function(msg)
    local input = (strtrim and strtrim(msg or "")) or (msg or "")

    -- Defensive: ensure TFG table exists
    if not TFG then
        print("TFG: addon not initialized")
        return
    end

    -- Optional minimap controls:
    --   /tfg minimap
    --   /tfg minimap show
    --   /tfg minimap hide
    if TFG.Minimap and TFG.Minimap.HandleSlash then
        local ok, handled = pcall(function() return TFG.Minimap:HandleSlash(input) end)
        if ok and handled then
            return
        end
    end

    -- Optional window button controls:
    --   /tfg button <character|spellbook> [show|hide]
    if TFG.FrameButtons and TFG.FrameButtons.HandleSlash then
        local ok, handled = pcall(function() return TFG.FrameButtons:HandleSlash(input) end)
        if ok and handled then
            return
        end
    end

    local cmd = input:lower()
    if cmd == "help" or cmd == "?" then
        printHelp()
        return
    end
    if cmd == "reset" or cmd == "resetpos" or cmd == "resetposition" then
        local ok, err = pcall(function()
            if TFG.ResetMainUIPosition then
                TFG.ResetMainUIPosition()
            end
        end)
        if ok then
            print("TFG: window position reset.")
        else
            print("TFG: error resetting window position: " .. tostring(err))
        end
        return
    end

    local ok, err = pcall(function()
        if TFG.ToggleMainUI then
            TFG.ToggleMainUI()
        end
    end)
    if not ok then
        print("TFG: error toggling frame: " .. tostring(err))
    end
end

-- Register a handler
if TIMBER_BROADCAST and TIMBER_BROADCAST.Register then
    TIMBER_BROADCAST.Register("TimbersFieldGuide", function(msg)
        msg = (msg or ""):match("^%s*(.-)%s*$") -- trim
        if msg == "" or msg == "help" then
            printHelp()
        end
    end)
end
