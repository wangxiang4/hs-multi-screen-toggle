
-- 组合超级键
command_control_option = { "command", "control", "option" }
control_option = { "control", "option" }
command_option = { "command", "option" }
command_option_shift = { "command", "option", "shift" }

-- 配置快捷键启动应用
launcher_apps = {
  {shortcut = 'W',appname = 'WeChat'},
  {shortcut = 'I',appname = 'Terminal'},
  {shortcut = 'A',appname = 'Activity Monitor'},
  {shortcut = 'N',appname = 'Digital Color Meter'},
}

-- Configure shortcut keys to launch shortcuts
launcher_shortcuts = {
  {scriptname = 'Screen capture text to clipboard',shortcut = 'S', combinekey={ "option" }},
}
