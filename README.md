# 概要 🇯🇵 日本語

このスクリプトは、FiveM（QBCore）サーバー向けの 緊急テレポート機能 を提供します。
バグや不具合などにより通常のプレイ継続が困難になったプレイヤーを、安全な位置へ即座に移動させるための 救済用システム です。

不正利用を防ぐため、使用時には 理由の記録 および Discord Webhook への通知 が行われます。

## 主な機能
・緊急時専用のテレポート機能
・使用理由の取得・記録
・Discord Webhook への自動ログ送信
・プレイヤー名を含む詳細な通知
・画像付き Embed（任意）
・QBCore 完全対応

## インストール方法
1.このリポジトリをダウンロード、またはクローンします。

2.フォルダ名を emergencytp に変更し、resources フォルダへ配置します。

3.Config.lua を開き、必要な設定（Discord Webhook など）を行います。

4.server.cfg に以下を追加してください。
````ensure emergencytp````

5.サーバーを再起動し、正常に動作していることを確認します。

## 最後に

本スクリプトは、個人利用および非商用利用のみ を目的として公開されています。

以下の行為を 一切禁止 します。

本スクリプトの 販売・再販売

有償サービス、パッケージ、サーバー参加特典などへの 組み込み

改変後のスクリプトを含む、金銭が発生する形での配布

本スクリプトを利用した、寄付・支援・課金などの対価としての提供

上記に該当する行為が確認された場合、
事前の連絡なく、公開停止の要請または利用停止を求める場合があります。

# OverView en English
This script provides an Emergency Teleport feature for FiveM servers using the QBCore framework.
It is designed as a recovery system to instantly move players to a safe location when normal gameplay becomes impossible due to bugs or unexpected issues.

To prevent abuse, each use requires a reason to be recorded and sends a notification to a Discord webhook.

## Features
・Emergency-only teleport functionality

・Collection and logging of usage reasons

・Automatic logging via Discord Webhook

・Detailed notifications including player name

・Optional image-based Discord embeds

・Full QBCore compatibility

## How to install
1.Download or clone this repository.

2.Rename the folder to emergencytp and place it inside your resources directory.

3.Open Config.lua and configure the required settings (such as the Discord Webhook).

4.Add the following line to your server.cfg:
````ensure emergencytp````

5.Restart the server and verify that the script is working correctly.

## Final Notes

This script is released for personal and non-commercial use only.

The following actions are strictly prohibited:

Selling or reselling this script

Including this script in any paid services, packages, or server access benefits

Distributing this script, including modified versions, in any form that involves monetary transactions

Providing this script as a reward or benefit in exchange for donations, support, or payments

If any of the above actions are confirmed,
the author reserves the right to request the immediate removal of the script or termination of its use without prior notice.