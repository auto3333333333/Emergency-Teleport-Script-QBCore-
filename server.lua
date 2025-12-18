local QBCore = exports['qb-core']:GetCoreObject()
local webhookURL = Config.Webhook.message -- Discord Webhook URL

RegisterNetEvent('emergencytp:sendToDiscord')
AddEventHandler('emergencytp:sendToDiscord', function(reason, imageUrl)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local firstname = xPlayer and xPlayer.PlayerData and xPlayer.PlayerData.charinfo and xPlayer.PlayerData.charinfo.firstname or "Unknown"
    local lastname = xPlayer and xPlayer.PlayerData and xPlayer.PlayerData.charinfo and xPlayer.PlayerData.charinfo.lastname or ""
    local playerName = firstname .. " " .. lastname
    local embedMessage = string.format(Config.Discordlocale.message, playerName, reason)
    if Config.Image then 
        PerformHttpRequest(webhookURL, function(err, text, headers) if err ~= 204 then print("^1[emergencytp] Discord webhook送信でエラー発生: ".. tostring(err) .. "^7") end end, 'POST',
        json.encode({
            username = Config.Discordlocale.username,
            embeds = {{
                title = Config.Discordlocale.title,
                description = embedMessage,
                color = 1904866,
                image = {
                    url = imageUrl
                },
                footer = {
                    text = os.date("%Y-%m-%d %H:%M:%S")
                }
            }}
        }), { ['Content-Type'] = 'application/json' })
    else
        PerformHttpRequest(webhookURL, function(err, text, headers) if err ~= 204 then print("^1[emergencytp] Discord webhook送信でエラー発生: ".. tostring(err) .. "^7") end end, 'POST', 
        json.encode({
            username = Config.Discordlocale.username,
            embeds = {{
                title = Config.Discordlocale.title,
                description = embedMessage,
                color = 1904866,
                footer = {
                    text = os.date("%Y-%m-%d %H:%M:%S")
                }
            }}
        }), { ['Content-Type'] = 'application/json' })
    end
end)