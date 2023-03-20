
-- 快捷键启动应用
hs.fnutils.each(launcher_apps, function(entry)
    hs.hotkey.bind(command_control_option, entry.shortcut, entry.appname, function()
        hs.application.launchOrFocus(entry.appname)
    end)
end)
