# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create(name: "Star Wars",  name: "Lord of the Rings")
#   Character.create(name: "Luke", movie: movies.first)
# restaurant = Restaurant.create(name: "Hakkasan",  address: "London",  category: "chinese")
# restaurant.save
# restaurant = Restaurant.create(name: "Cipriani",  address: "London",  category: "italian")
# restaurant.save
# restaurant = Restaurant.create(name: "Yashin",  address: "London",  category: "japanese")
# restaurant.save
# restaurant = Restaurant.create(name: "Greenhouse",  address: "London",  category: "french")
# restaurant.save
# restaurant = Restaurant.create(name: "Mussels",  address: "Brussels",  category: "belgian")
# restaurant.save

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
yashin = {name: "Yashin Sushi", address: "100 Boundary St, London E2 7JE", category: "japanese"}
green = {name: "Greenhouse", address: "1 Oxford St, London E1 6PQ", category: "french"}
mussel = {name: "Mussels", address: "7 Boundary St, London E2 7JE", category: "belgian"}

[dishoom, pizza_east, yashin, green, mussel].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
