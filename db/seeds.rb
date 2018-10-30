require 'faker'

10.times do
  Gossip.create!(author: Faker::Artist.name, content: Faker::Movie.quote)
end
