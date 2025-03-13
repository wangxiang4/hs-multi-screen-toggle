local hotkey = require "hs.hotkey"
local shortcuts = require "hs.shortcuts"
local fnutils = require "hs.fnutils"
local timer = require "hs.timer"

fnutils.each(launcher_shortcuts, function(entry)
    local debounceTimer = nil
    hotkey.bind(entry.combinekey, entry.shortcut, function()
        -- If you keep asking him your requests will be ignored until you stop and give him some time to think about your latest inquiry 
        if debounceTimer then
           debounceTimer:stop()
           debounceTimer = nil
        end
        debounceTimer = timer.doAfter(1, function() 
            shortcuts.run(entry.scriptname)
        end):start()
    end)
end)
