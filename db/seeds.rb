# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#CITY
10.times do
  city = City.create!(name: Faker::Address.city, postal_code: Faker::Address.zip_code)
end

#USER
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.between(1, 99), city_id: City.find(1+rand(9)).id)
end

#THE_GOSSIPS
10.times do
  gossip = Gossip.create!(title: Faker::Lorem.word, content: Faker::Lorem.paragraph, date: Faker::Date.birthday(1, 3), user_id: User.find(1+rand(9)).id)
end

#THE_TAGS
10.times do
  tag = Tag.create!(title: Faker::Lorem.word)
end

#THE_TAGS_OF_GOSSIP
10.times do
  tag_gossip = TagGossip.create!(gossip_id: Gossip.find(1+rand(9)).id, tag_id: Tag.find(1+rand(9)).id)
end

#PRIVATE_MESSAGES
 10.times do
  privatemessage = Privatemessage.create!(content: Faker::Lorem.paragraph, date: Faker::Date.birthday(1, 3), recipient_id: User.find(1+rand(9)).id, sender_id: User.find(1+rand(9)).id)
end

#COMMENTS
 10.times do
  comment = Comment.create!(content: Faker::Lorem.paragraph, user_id: User.find(1+rand(9)).id, gossip_id: User.find(1+rand(9)).id)
end

#LIKES
 10.times do
  like = Like.create!(gossip_id: User.find(1+rand(9)).id, user_id: User.find(1+rand(9)).id)
end