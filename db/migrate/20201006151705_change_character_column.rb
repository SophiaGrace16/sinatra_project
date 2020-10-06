class ChangeCharacterColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :characters, :class, :character_class
  end
end
