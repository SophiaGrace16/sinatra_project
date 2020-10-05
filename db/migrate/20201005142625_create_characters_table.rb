class CreateCharactersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.string :class
      t.integer :level
      t.string :race
      t.string :background
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.text :character_story
      t.integer :user_id
    end
  end
end

# t.boolean :alive?