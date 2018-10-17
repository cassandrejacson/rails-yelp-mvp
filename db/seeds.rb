require 'faker'

puts 'Cleaning database'
Restaurant.destroy_all

puts 'creating restos'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  restaurant.save
end
puts 'Finished'
