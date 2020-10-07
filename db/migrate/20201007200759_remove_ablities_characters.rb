class RemoveAblitiesCharacters < ActiveRecord::Migration[5.2]
  def change
    remove_column :characters, :ablities
  end
end
