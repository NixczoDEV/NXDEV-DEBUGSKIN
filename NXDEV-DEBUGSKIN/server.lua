--------------------------------------------------------------------
--2024-04-02--   NXDEV   --MADE BY NXICZO--   NXDEV   --2024-04-02--
--------------------------------------------------------------------

---------------------------------------------- adebug NIXCZO
RegisterCommand('debug', function (source, args)
    if args[1] and tonumber(args[1]) then
        local SName = GetPlayerName(source)
        local TName = GetPlayerName(tonumber(args[1]))
        TriggerClientEvent("nixczo:adebug", tonumber(args[1]))
        TriggerClientEvent("iNotificationV3:showAdvancedNotification", source, "Administration", "Debug Skin", "Debug effectuer avec ~g~succès~s~<br/>Joueur : ~r~"..TName.."", "CHAR_MARTIN", 5, "left")                 
        TriggerClientEvent("iNotificationV3:showAdvancedNotification", tonumber(args[1]), "Administration", "Debug Skin", "Debug effectuer par le ~g~STAFF~s~<br/>Staff : ~r~"..GetPlayerName(source).."~s~", "CHAR_MARTIN", 3, "left"); 
        if clogs.debugskin then
            sendToDiscord("Debug-Staff",'***Joueur :*** '..GetPlayerName(tonumber(args[1]))..'\n***Staff :*** '..GetPlayerName(source))
        end
    else
        local SName = GetPlayerName(source)
        TriggerClientEvent("nixczo:adebug", source)
        TriggerClientEvent("iNotificationV3:showNotification", source, "~g~Debug~s~ effectuer", 5, "left")
        if clogs.debugskin then
            sendToDiscord("Debug-Staff",'***Ce staff vient de debug son skin:*** '..GetPlayerName(source))
        end
end
end, true)
--------------------------------------------- adebug NIXCZO

--------------------------------------------------------------------
--2024-04-02--   NXDEV   --MADE BY NXICZO--   NXDEV   --2024-04-02--
--------------------------------------------------------------------
-------------------------------------------------------------------- LOGS DISCORD

----------------------------------------------------------------------------------------
---- DebugSkin Logs 
function sendToDiscord(name, message)
    if message == nil or message == '' then
        print('Message was not set, therefor it wasn\'t sent')
        return
    end
    if discord_webhook == nil and discord_webhook == '' then
        print('Discord webhook not set, therefore message wasn\'t sent')
        return
    end

    local embeds = { {
        ['title'] = '➡️ | Debug-Skin',
        ['type'] = 'rich',
        ['description'] = message,
        ['color'] = clogs.webhookColor, --[[ Current Color: Orange]]
        ['footer'] = {
            ['text'] = "🖥️ "..os.date("%d/%m/%Y | %X"),
        }, } 
    }

    PerformHttpRequest(clogs.webhookskin, function(err, text, headers) end, 'POST', json.encode({ username = name, embeds = embeds}), { ['Content-Type'] = 'application/json' })
end
---- DebugSkin Logs 
----------------------------------------------------------------------------------------
-------------------------------------------------------------------- LOGS DISCORD

