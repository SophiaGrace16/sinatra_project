class Story < ActiveRecord::Base
    belongs_to :dm

    validates :title, :num_of_players, :story_type, :setting, :monsters, :final_boss, :rewards, :story_findables, :summary, :story_link, presence: true
end
