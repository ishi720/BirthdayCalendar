# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Character.create([
  {
    name: 'ポムポムプリン',
    nickname: 'プリン',
    tag: 'サンリオ',
    icon_image: '',
    description: '',
    month: 4,
    day: 16
  },
  {
    name: 'シナモロール',
    nickname: 'シナモン',
    tag: 'サンリオ',
    icon_image: '',
    description: '',
    month: 3,
    day: 6
  },
  {
    name: 'モンキー・D・ルフィ',
    nickname: 'ルフィ',
    tag: 'ONE PIECE',
    icon_image: '',
    description: '',
    month: 5,
    day: 5
  },
  {
    name: 'シャンクス',
    nickname: 'シャンクス',
    tag: 'ONE PIECE',
    icon_image: '',
    description: '',
    month: 3,
    day: 9
  },
  {
    name: '江戸川コナン',
    nickname: 'コナン',
    tag: '名探偵コナン',
    icon_image: '',
    description: '',
    month: 5,
    day: 4
  }
])
