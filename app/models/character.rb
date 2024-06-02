class Character < ApplicationRecord
  # 名前
  validates :name, presence: true, length: { maximum: 50 }

  # ニックネーム
  validates :nickname, length: { maximum: 50 }

  # 月
  validates :month, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 12 }

  # 日
  validates :day, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 31 }

  # タグ
  validates :tag, length: { maximum: 100 }, allow_blank: true

  # アイコン画像
  validates :icon_image, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: I18n.t('activerecord.errors.models.character.attributes.icon_image.invalid_url') }, allow_blank: true

  # 説明文
  validates :description, length: { maximum: 500 }, allow_blank: true
end
