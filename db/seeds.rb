# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating flats..."

4.times do
  flat = Flat.new(
    name: Faker::Commerce.department(max: 5),
    address: Faker::Address.unique.street_address,
    description: Faker::Company.catch_phrase,
    price_per_night: Faker::Number.non_zero_digit,
    number_of_guests: Faker::Number.non_zero_digit
  )
  flat.save!
end

puts "Finish creating flats"
