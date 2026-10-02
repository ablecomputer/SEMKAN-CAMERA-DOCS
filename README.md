# SEMKAN-CAMERA-DOCS

- セムカンカメラから参照するHTMLを管理する
- github pages でホスティングする
    - github pages でのuriを小文字で統一するため、リポジトリ名も小文字にしている
- Jekyll を使用して静的ページを生成する

ページの元ファイルは `pages/` に置き、公開 URL は各ファイルの `permalink` で指定する

# github pages 設定

https://github.com/ablecomputer/semkan-camera-docs/settings/pages

# 事前準備

- Docker Desktop をインストールして docker コマンドを使用できるようにしておく

# ローカル環境の構築

```sh
docker compose up --build -d
```
--build: コンテナを起動する前にDockerイメージをビルドし直す  
-d: バックグラウンドで起動  
  
初回起動時に `Gemfile.lock` が自動生成される為、生成されたファイルは Git で管理する  
`Gemfile` を変更した場合も、上記のコマンドで依存関係が更新される  
Markdown や HTML の変更は起動中のサーバーに反映される  

# ページ確認

http://localhost:4000

# 停止

```sh
docker compose down
```
