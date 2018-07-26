require 'faker'


5.times do 
	city = City.create(city_name: Faker::Address.city)
end

10.times do
	dog = Dog.create(name: Faker::Artist.name, city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
	dogsitter = Dogsitter.create(name: Faker::BreakingBad.character, city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
	stroll = Stroll.create(date: "2018-07-26 12:00:00".to_datetime, dog_id: rand((Dog.first.id)..(Dog.last.id)), dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id)))
end
