local hotkey = require "hs.hotkey"
local caffeinate = require "hs.caffeinate"

-- 锁定屏幕
hotkey.bind(command_control_option, "L", function()
  caffeinate.lockScreen()
end)
