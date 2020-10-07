class Character < ActiveRecord::Base
    belongs_to :player

    validates :character_name, :character_class, :level, :race, :background, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :character_story, presence: true
end