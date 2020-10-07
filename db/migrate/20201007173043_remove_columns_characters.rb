class RemoveColumnsCharacters < ActiveRecord::Migration[5.2]
  def change
    remove_column :characters, :feats
    remove_column :characters, :abilities
  end
end
