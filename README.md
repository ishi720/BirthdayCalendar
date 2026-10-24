# BirthdayCalendar

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/62a302b328bc4285b1d84bc5c61a08ee)](https://app.codacy.com/gh/ishi720/BirthdayCalendar/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

## 概要

キャラクターの誕生日をカレンダーに登録します

## 技術スタック

| 分類 | 使用技術 |
|---|---|
| 言語 | Ruby 3.2 |
| フレームワーク | Ruby on Rails 8.1 |
| データベース | SQLite |
| Web サーバー | Puma |
| 認証 | Devise |
| カレンダー表示 | simple_calendar |
| ページネーション | Kaminari |
| 日本語化 | rails-i18n |
| フロントエンド | Hotwire , Importmap |
| CSS | Semantic UI , Sass , Sprockets |
| テスト | Minitest, Capybara, Selenium |
| 静的解析 | RuboCop |
| CI | GitHub Actions (RuboCop) |

## 環境

```
$ ruby -v
ruby 3.2.3 (2024-01-18 revision 52bb2ac0a6) [x64-mingw-ucrt]

$ rails -v
Rails 8.1.4
```

## セットアップ

```bash
# パッケージインストール
$ bundle install

# DBマイグレート
$ rails db:migrate

# 起動
$ rails s
```

## テスト

```bash
# テスト実行
$ rails test

# ファイルを指定して実行
$ rails test test/controllers/calendar_controller_test.rb

# RuboCop
$ bundle exec rubocop
```

## パッケージの更新

```bash
# 更新可能なgemを確認
$ bundle outdated

# Gemfileに直接記載したgemのみ確認
$ bundle outdated --only-explicit

# 特定のgemを更新
$ bundle update <gem名>

# Gemfileのバージョン指定の範囲内ですべてのgemを更新
$ bundle update

# パッチバージョンのみ更新
$ bundle update --patch

# Bundler自体を更新
$ bundle update --bundler
```


