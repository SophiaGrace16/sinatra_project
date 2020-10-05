class CreateStoriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.integer :num_of_players
      t.string :title
      t.string :type
      t.string :setting
      t.string :monsters
      t.string :final_boss
      t.string :rewards
      t.string :findables
      t.text :summary
      t.string :story_link
      t.integer :dm_id
    end
  end
end

