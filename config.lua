Config = {}

Config.EmergencyTeleportCommand = "etp"

Config.teleportCoords = vector3(-516.1262, -254.5978, 35.6298) --Teleport to

Config.cooldown = 60 * 60 * 1000 -- 1Hour

Config.Webhook = {
    photo = "",
    message = "https://discord.com/api/webhooks/1446096948158533643/lVEk_rI-PjkJKhdFgy95H-Cm0Zl6YCBwY3Q5zm-NCycE9grtUDB62I5GAqAnSKZtCOWk"
}

Config.Image = true

Config.locale = {
    commandhelp = "緊急テレポートを行う",
    emergencyteleport = "緊急テレポート", -- input Title
    cancel = "キャンセルしました", -- When canceling a teleport
    inputreason = "理由を入力してください", -- input reason
    teleportreason = "緊急テレポートしました！ 理由:", -- Teleport to show the reason you entered
    cantteleport = "まだ緊急テレポートを利用できません。しばらく待ってからもう一度実行してください。", -- Notification when teleportation is not possible
    canteleport = "テレポートが再度使用可能になりました。", -- When teleportation becomes available again
    cantsendscreenshot = "スクリーンショット送信に失敗しました"
}

Config.Discordlocale = {
    message = "🚨 **緊急テレポート**\nプレイヤー: %s\n理由: %s",
    username = "緊急テレポート",
    title = "緊急テレポート通知"
}