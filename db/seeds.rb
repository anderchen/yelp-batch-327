# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Restaurant.destroy_all

puts 'Database clean!'

puts 'Creating restaurants....'

restaurant_attributes = [
  {
    name: "Ráscal",
    address: "123, Rascal St",
    description: "Comida italiana",
    stars: 5,
    chef: "Ana Veras"
  },
  {
    name: "Bullger",
    address: "456, Vila madalena",
    description: "Smash burgers",
    stars: 3,
    chef: "Admar Concon Neto"
  },
  {
    name: "Vintão",
    address: "789, Vintom St",
    description: "All you can eat",
    stars: 5,
    chef: "Davis vintom"
  }
]

Restaurant.create!(restaurant_attributes)

puts "#{Restaurant.count} restaurants create!!"
