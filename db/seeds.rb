# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.delete_all

9.times do Flat.create(
  name: Faker::FamilyGuy.location,
  address: Faker::Address.street_address,
  description: Faker::FamilyGuy.quote,
  price_per_night: Faker::Number.normal(50, 3.5),
  number_of_guests: Faker::Number.digit )
end
