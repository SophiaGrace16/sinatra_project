class Story < ActiveRecord::Base
    belongs_to :dm

    validates :title, :num_of_players, :story_type, :setting, :monsters, :final_boss, :rewards, :story_findables, :summary, :story_link, presence: true
end

# create_table "stories", force: :cascade do |t|
#     t.integer "num_of_players"
#     t.string "title"
#     t.string "story_type"
#     t.string "setting"
#     t.string "monsters"
#     t.string "final_boss"
#     t.string "rewards"
#     t.string "story_findables"
#     t.text "summary"
#     t.string "story_link"
#     t.integer "dm_id"
#   end