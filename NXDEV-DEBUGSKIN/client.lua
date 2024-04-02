--------------------------------------------------------------------
--2024-04-02--   NXDEV   --MADE BY NXICZO--   NXDEV   --2024-04-02--
--------------------------------------------------------------------
--/////////////////////////////////////////////////////////// chat addSuggestion

TriggerEvent('chat:addSuggestion', '/debug', "Debug le skin d'un joueur", {
    { name="ID", help="ID du joueur" },
})

--/////////////////////////////////////////////////////////// chat addSuggestion

--/////////////////////////////////////// NIXCZO EVENT
-------------------------------------------------------
RegisterNetEvent('nixczo:adebug')
AddEventHandler('nixczo:adebug', function ()
    local pped = PlayerPedId()
    Citizen.Wait(10)
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
    TriggerEvent('skinchanger:loadSkin', skin)
    end)
end)
-------------------------------------------------------
--/////////////////////////////////////// NIXCZO EVENT

--------------------------------------------------------------------
--2024-04-02--   NXDEV   --MADE BY NXICZO--   NXDEV   --2024-04-02--
--------------------------------------------------------------------
