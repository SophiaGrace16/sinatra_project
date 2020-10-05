class CreateDmsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :dms do |t|
    t.string :name
    t.string :username
    t.string :password_digest
    end
  end
end
