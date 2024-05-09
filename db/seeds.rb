require "open-uri"
# before running this file, make sure to run the following command in the terminal:
# rails db:drop db:create db:migrate db:seed



# This file should contain all the record creation needed to seed the database with its default values.
puts "Cleaning up database..."

Booking.destroy_all
Bike.destroy_all
User.destroy_all

puts "Database cleaned"

user = User.create(email:"test@test.com", password:123456)

bike1 = Bike.new(price: 20, description: "amazing", colour: "black", speed: 5, user: user)
# bike1.photo.attach(io: URI.open(), filename: "nes.png", content_type: "image/png")
bike1.save

bike2 = Bike.new(price: 35, description: "amazing", colour: "green", speed: 3, user: user)
bike2.photo.attach(io: URI.open("https://www.shutterstock.com/shutterstock/photos/1498702814/display_1500/stock-photo-yellow-black-er-mountainbike-with-thick-offroad-tyres-bicycle-mtb-cross-country-aluminum-1498702814.jpg"), filename: "nes.png", content_type: "image/png")
bike2.save

bike3 = Bike.new(price: 6, description: "cheap", colour: "pink", speed: 2, user: user)
# bike3.photo.attach(io: URI.open(), filename: "nes.png", content_type: "image/png")
bike3.save

bike4 = Bike.new(price: 255, description: "expensive", colour: "yellow", speed: 1, user: user)
bike4.save

bike5 = Bike.new(price: 10, description: "cheap", colour: "pink", speed: 2, user: user)
bike5.save

bike6 = Bike.new(price: 55, description: "expensive", colour: "yellow", speed: 1, user: user)
bike6.save

bike7 = Bike.new(price: 6, description: "cheap", colour: "pink", speed: 2, user: user)
bike7.save

bike8 = Bike.new(price: 255, description: "expensive", colour: "yellow", speed: 1, user: user)
bike8.save

bike9 = Bike.new(price: 6, description: "cheap", colour: "pink", speed: 2, user: user)
bike9.save

bike10 = Bike.new(price: 255, description: "expensive", colour: "yellow", speed: 1, user: user)
bike10.save

bike11 = Bike.new(price: 6, description: "cheap", colour: "pink", speed: 2, user: user)
bike11.save

bike12 = Bike.new(price: 255, description: "expensive", colour: "yellow", speed: 1, user: user)
bike12.save

bike13 = Bike.new(price: 6, description: "cheap", colour: "pink", speed: 2, user: user)
bike13.save

bike14 = Bike.new(price: 255, description: "expensive", colour: "yellow", speed: 1, user: user)
bike14.save
