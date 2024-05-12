class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :nickname
      t.date :birthday
      t.string :tag
      t.string :icon_image
      t.text :description

      t.timestamps
    end
  end
end
