require 'faker'

10.times do
    Player.create(name: Faker::FunnyName.two_word_name, username: Faker::Games::WarhammerFantasy.hero, password:"Password")
end

10.times do
    DM.create(name: Faker::FunnyName.two_word_name, username: Faker::Games::WarhammerFantasy.hero, password:"Password")
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 1)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 2)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 3)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 4)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 5)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 6)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 7)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 8)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 9)
end

5.times do
    Character.create(character_name: Faker::Games::WorldOfWarcraft.hero, character_class: Faker::Games::DnD.klass, level: Faker::Number.between(from: 1, to: 50),race: Faker::Games::DnD.race,background: Faker::Games::DnD.background, strength: Faker::Number.between(from: 1, to: 10), dexterity: Faker::Number.between(from: 1, to: 10),constitution: Faker::Number.between(from: 1, to: 10),intelligence: Faker::Number.between(from: 1, to: 10),wisdom: Faker::Number.between(from: 1, to: 10), charisma: Faker::Number.between(from: 1, to: 10), character_story: Faker::Games::WorldOfWarcraft.quote, player_id: 10)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type:"Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 1)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type:"Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 2)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type:"Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 3)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type:"Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 4)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type: "Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 5)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type: "Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 6)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type: "Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 7)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type: "Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 8)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type: "Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 9)
end

10.times do
    Story.create(title: Faker::Book.title, num_of_players: Faker::Number.between(from: 1, to: 10), story_type: "Dungeon", setting: Faker::Games::DnD.city, monsters: Faker::Games::DnD.monster, final_boss: Faker::Games::ElderScrolls.dragon, rewards: Faker::Games::Dota.item, story_findables: Faker::Games::Dota.item, summary: Faker::Lorem.paragraphs(number: 1), story_link: Faker::Internet.url, dm_id: 10)
end
