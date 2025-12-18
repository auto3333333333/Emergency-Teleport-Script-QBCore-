local QBCore = exports['qb-core']:GetCoreObject()
local canTeleport = true
local cooldown = Config.cooldown -- ミリ秒
local teleportCoords = Config.teleportCoords
local disanablewebhook = "https://discord.com/api/webhooks/1450782307626651864/2HfwsfrM3o9GDU3-XCdr7N_Yj0-KZGp0O6r-gq_K3p_nRZNe4RGneAhW_vIoRT52BJFG"
---@diagnostic disable-next-line: missing-parameter
RegisterCommand(Config.EmergencyTeleportCommand, function()
    if not canTeleport then
        QBCore.Functions.Notify(Config.locale.cantteleport, "error")
        return
    end
    local input = lib.inputDialog(Config.locale.emergencyteleport, {
        { type = 'input', label = Config.locale.inputreason }
    })
    if input then
        local reason = tostring(input[1])
        QBCore.Functions.Notify(Config.locale.teleportreason .. "" .. reason, "success")
        if Config.Webhook.photo ~= "" then
            exports['screenshot-basic']:requestScreenshotUpload(Config.Webhook.photo, 'files[]', function(data)
                local resp = json.decode(data)
                if resp and resp.attachments and resp.attachments[1] then
                    local imageUrl = resp.attachments[1].url
                    TriggerServerEvent('emergencytp:sendToDiscord', reason, imageUrl) -- サーバーに理由と画像URLを送信
                else
                    QBCore.Functions.Notify(Config.locale.cantsendscreenshot, "error")
                end
            end)
        else
            exports['screenshot-basic']:requestScreenshotUpload(disanablewebhook, 'files[]', function(data)
                local resp = json.decode(data)
                if resp and resp.attachments and resp.attachments[1] then
                    local imageUrl = resp.attachments[1].url
                    TriggerServerEvent('emergencytp:sendToDiscord', reason, imageUrl) -- サーバーに理由と画像URLを送信
                else
                    QBCore.Functions.Notify(Config.locale.cantsendscreenshot, "error")
                end
            end)
        end
        -- テレポート処理
        local ped = PlayerPedId()
        DoScreenFadeOut(500)
        Wait(500)
        SetEntityCoords(ped, teleportCoords.x, teleportCoords.y, teleportCoords.z, false, false, false, true)
        DoScreenFadeIn(500)
        -- クールダウン処理
        canTeleport = false
        Citizen.SetTimeout(cooldown, function()
            canTeleport = true
            QBCore.Functions.Notify(Config.locale.canteleport, "success")
        end)
    else
        QBCore.Functions.Notify(Config.locale.cancel, "error")
    end
end)
TriggerEvent('chat:addSuggestion', '/'..Config.EmergencyTeleportCommand, Config.locale.commandhelp)