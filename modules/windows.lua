local hotkey = require "hs.hotkey"
local window = require "hs.window"
local layout = require "hs.layout"
local screen = require "hs.screen"
local alert = require "hs.alert"
local fnutils = require "hs.fnutils"
local geometry = require "hs.geometry"
local mouse = require "hs.mouse"

-- 窗口移动动画
window.animationDuration = 0

-- 窗口左半边
hotkey.bind(command_control_option, "Left", function()
  window.focusedWindow():moveToUnit(layout.left50)
end)

-- 窗口右半边
hotkey.bind(command_control_option, "Right", function()
  window.focusedWindow():moveToUnit(layout.right50)
end)

-- 最大化窗口
hotkey.bind(command_control_option, 'M', function() toggle_maximize() end)

-- 定义窗口最大化与正常大小切换缓存
local frameCache = {}
-- 在正常大小和最大化之间切换窗口
function toggle_maximize()
    local win = window.focusedWindow()
    if frameCache[win:id()] then
        win:setFrame(frameCache[win:id()])
        frameCache[win:id()] = nil
    else
        frameCache[win:id()] = win:frame()
        win:maximize()
    end
end

-- 将活动窗口移动到上一个监视器
hotkey.bind(command_option, "1", function()
  window.focusedWindow():moveOneScreenWest()
end)

-- 将活动窗口移动到下一个监视器
hotkey.bind(command_option, "2", function()
  window.focusedWindow():moveOneScreenEast()
end)

-- 将光标移动到上一个监视器
hotkey.bind(control_option, "1", function ()
  focusScreen(window.focusedWindow():screen():previous())
end)

-- 将光标移动到下一个监视器
hotkey.bind(control_option, "2", function ()
  focusScreen(window.focusedWindow():screen():next())
end)

-- 检查窗口是否在屏幕上
function isInScreen(screen, win)
  return win:screen() == screen
end

function focusScreen(screen)
  --在屏幕内获取窗口，从前到后排序，如果没有窗口显示桌面
  --manually get window focus
  --[[local windows = fnutils.filter(
      window.orderedWindows(),
      fnutils.partial(isInScreen, screen))
  local windowToFocus = #windows > 0 and windows[1] or window.desktop()
  windowToFocus:focus()--]]

  -- 将光标移动到屏幕中心
  local pt = geometry.rectMidPoint(screen:fullFrame())
  mouse.setAbsolutePosition(pt)
end

-- 最大化活动窗口并移动到选定的监视器
moveto = function(win, n)
  local screens = screen.allScreens()
  if n > #screens then
    alert.show("目前只检测" .. #screens .. "个显示器")
  else
    local toWin = screen.allScreens()[n]:name()
    layout.apply({{nil, win:title(), toWin, layout.maximized, nil, nil}})
  end
end

-- 将光标移动到监视器1并最大化窗口
hotkey.bind(option_shift, "1", function()
  local win = window.focusedWindow()
  moveto(win, 1)
end)

-- 将光标移动到监视器2并最大化窗口
hotkey.bind(option_shift, "2", function()
  local win = window.focusedWindow()
  moveto(win, 2)
end)

-- 将光标移动到监视器3并最大化窗口
hotkey.bind(option_shift, "3", function()
  local win = window.focusedWindow()
  moveto(win, 3)
end)
