# 都知事杯アプリ（仮）
### サークルイベントに参加したい人と、サークルの人員を募集したい人とのマッチングアプリ

## ・サービス概要

## ・メインのターゲットユーザー

## ・ユーザーが抱える課題

## ・解決方法

## ・実装予定の機能
- ### 会員未登録のユーザー

- ### 登録済みのユーザー

- ### 管理者
  - オープンデータマップでの各施設の登録
  - 登録ユーザーの管理
  - ユーザーが作成したイベントの管理

## read_me : https://www.figma.com/file/8Gf25Myb6jZVj8mjkP9RUy/%E3%81%A4%E3%81%AA%E3%81%92%E3%83%BC%E3%81%A8%E3%81%A3%E3%81%BD%E3%81%84?node-id=70%3A49
## ・画面遷移図 : https://www.figma.com/file/8Gf25Myb6jZVj8mjkP9RUy/%E3%81%A4%E3%81%AA%E3%81%92%E3%83%BC%E3%81%A8%E3%81%A3%E3%81%BD%E3%81%84?node-id=0%3A1
## ・ER図 ： https://www.notion.so/88a531d4f95b47889c4b4c537f8009cd

## how to start 

git pull後
↓
bundle install 
↓
bin/rails db:create
↓
bin/dev (サーバーの立ち上げはrails sではなくこちら(bin/dev)を使ってください)

### ruby -v
ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [arm64-darwin21]
### bin/rails -v 
Rails 7.0.3.1

### サーバー起動
bin/dev 

## 備考

###rails newした時のコマンドとその概要
rails new . --css=tailwind --database=postgresql --javascript=esbuild --skip-jbuilder --skip-action-mailbox --skip-action-mailer --skip-test --skip-active-storage --skip-action-text

--css=tailwind: CSSフレームワークにTailwindcssを利用
--javascript=esbuild: javascriptの導入方法はesbuild
--database=postgresql: databaseにポスグレを導入
--skip-jbuilder: jbuilderの導入をskip
--skip-action-mailbox: action-mailboxの導入をskip
--skip-action-mailer: action-mailerの導入をskip
--skip-test: testの導入をskip
--skip-active-storage: active-storageの導入をskip
--skip-action-text: action-textの導入をskip

