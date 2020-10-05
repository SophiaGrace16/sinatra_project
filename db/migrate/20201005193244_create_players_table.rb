class CreatePlayersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :username
      t.string :password_digest
    end
  end
end
