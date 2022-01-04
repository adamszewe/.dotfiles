-- Open or focus <app> on hotkey

local keyAppMap = {}
keyAppMap["1"] = "Alacritty"
keyAppMap["2"] = "Android Studio"
keyAppMap["3"] = "Google Chrome"
keyAppMap["4"] = "Brave Browser"
keyAppMap["5"] = "Slack"
keyAppMap["6"] = "Meistertask"

local function launchOrFocusApp(appName)
    local appInstance = hs.application.get(appName)
    if appInstance ~= nil and appInstance:isFrontmost() then
        appInstance:hide()
    else
        hs.application.launchOrFocus(appName)
    end
end

for key,appName in pairs(keyAppMap) do
    hs.hotkey.bind({ 'ctrl', 'shift' }, key, function()
        launchOrFocusApp(appName)
    end)
end
