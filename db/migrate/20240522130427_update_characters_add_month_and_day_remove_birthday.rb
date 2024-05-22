class UpdateCharactersAddMonthAndDayRemoveBirthday < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :month, :integer, after: :nickname
    add_column :characters, :day, :integer, after: :month
    remove_column :characters, :birthday, :date
  end
end
