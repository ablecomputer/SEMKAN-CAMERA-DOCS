FROM ruby:3.3-bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile* ./

# Gemfileを使用して必要なライブラリをインストール
RUN bundle install

# Dockerfileがあるディレクトリの中身を、コンテナの現在の作業ディレクトリへコピー
COPY . .

# 開放ポート
EXPOSE 4000

# コンテナ起動時にJekyllの開発サーバーを起動する
# ポートを明示しない場合は 4000 番ポートを使用する
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
