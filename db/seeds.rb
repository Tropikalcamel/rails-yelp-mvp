# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
city_chicken = {name: "City Chicken", address: "Berlin", phone_number: 1234546565, category: "japanese"}
mustafa = {name: "Mustafa's GD", address: "Berlin Mitte", phone_number: 1234546565, category: "french"}
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 1234546565, category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 1234546565, category: "belgian"}
pizza_west =  {name: "Pizza West", address: "68A Shoreditch High St, leeds E1 6PQ", phone_number: 1234546565, category: "belgian"}

[city_chicken, mustafa, dishoom, pizza_east, pizza_west].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"

end

puts "#{Restaurant.count} restaurants in database"
puts "Finished!"
