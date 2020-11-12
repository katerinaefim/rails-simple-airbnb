# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts 'Creating flats...'
flat1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat2 = {
  name: 'flat 2',
  address: 'address 2',
  description: 'description 2',
  price_per_night: 80,
  number_of_guests: 2
}

flat3 = {
  name: 'flat 3',
  address: 'address 3',
  description: 'description 3',
  price_per_night: 90,
  number_of_guests: 3
}

flat4 = {
  name: 'flat 4',
  address: 'address 4',
  description: 'description 4',
  price_per_night: 100,
  number_of_guests: 4
}

[flat1, flat2, flat3, flat4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
