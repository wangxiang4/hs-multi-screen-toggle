
-- 连接到指定wifi后静音
hs.wifi.watcher.new(function()
    local currentWifi = hs.wifi.currentNetwork()
    local currentOutput = hs.audiodevice.current(false)
    if not currentWifi then return end

    if (currentWifi == work_wifi and currentOutput.name == output_device_name) then
        -- 音频静音
        hs.audiodevice.findDeviceByName(output_device_name):setOutputMuted(true)
        hs.notify.new({title="HS Robot", informativeText="Connect to Company And Audio Mute"}):send()
    end
end):start()
