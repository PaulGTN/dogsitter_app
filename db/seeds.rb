
require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all


10.times do 
  city = City.create(city_name: Faker::Address.city)
end

10.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.name, city_id: (rand(City.first.id..City.last.id)))
end

10.times do
  dog = Dog.create!(name: Faker::Dog.name, city_id: (rand(City.first.id..City.last.id)))
end 

20.times do
  stroll = Stroll.create!(dogsitter_id: (rand(Dogsitter.first.id..Dogsitter.last.id)), dog_id: (rand(Dog.first.id..Dog.last.id)))
end
