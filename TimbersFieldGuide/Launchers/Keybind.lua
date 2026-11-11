local _, TFG = ...

-- Entry point: the keybinding (bindings.xml) toggles the addon.
-- Public toggle used by keybindings: opens the main navigation UI.
_G.TimbersFieldGuide_Toggle = function()
    TFG.ToggleMainUI()
end
