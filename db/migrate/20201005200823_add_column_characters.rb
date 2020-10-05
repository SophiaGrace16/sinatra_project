class AddColumnCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :ablities, :string
    add_column :characters, :feats, :string
  end
end
