class ChangeCharactersColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :user_id, :player_id
  end
end
