local uiOpen = false

HelpNotify = function(data)
    if Config.Keys[data.key] == nil or not Config.Keys[data.key] then return Config.CustomNotify(Config.Lang['NoKey']) end

    if uiOpen then return end 
    uiOpen = true 
    SendNUIMessage({
        type = "open",
        notifyData = data
    })

end

exports('HelpNotify', HelpNotify)


CloseNotify = function()

    if not uiOpen then return end

    uiOpen = false

    SendNUIMessage({
        type = "close",
    })

end

exports('CloseNotify', CloseNotify)
