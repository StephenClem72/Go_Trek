require 'faker'

10.times do
  Trail.create(name: Faker::Name.name, description: Faker::Lorem.paragraph, location: Faker::Address.state, distance: Faker::Number.digit, skill_level: Faker::Lorem.word)
end