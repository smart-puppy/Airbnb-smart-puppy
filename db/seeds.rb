require "open-uri"
# before running this file, make sure to run the following command in the terminal:
# rails db:drop db:create db:migrate db:seed



# This file should contain all the record creation needed to seed the database with its default values.
puts "Cleaning up database..."

Booking.destroy_all
Bike.destroy_all
User.destroy_all

puts "Database cleaned"



#the Summit 5000 Mountain Bike

user = User.create(email:"test@test.com", password:123456)
user = User.create(email:"lewis@gmail.com", password:123456)
user = User.create(email:"robbie@gmail.com", password:123456)



bike3 = Bike.new(price: 40, description: "Experience the thrill of riding together with the Adventure Duo Tandem Bike.", colour: "the Adventure Duo Tandem Bike", speed: 3, user: user)
bike3.photo.attach(io: URI.open("https://www.tgc.bike/images/dawes-combi-p80-68_image.jpg"), filename: "nes.png", content_type: "image/png")
bike3.save


bike4 = Bike.new(price: 40, description: "The Duchess has been leading the way in heritage style, comfortable bikes for several years now.", colour: "Duchess Heritage Bike", speed: 3, user: user)
bike4.photo.attach(io: URI.open("https://www.tgc.bike/images/dawes-duchess-heritage-bike-p85-10543_image.jpg"), filename: "nes.png", content_type: "image/png")
bike4.save



bike5 = Bike.new(price: 40, description: "The all-new Dawes Spire 1.0 Low Step electric bike is a versatile hybrid; perfectly suited for the daily commute", colour: "Spire 1.0 Low Step Electric Hybrid Bike", speed: 3, user: user)
bike5.photo.attach(io: URI.open("https://www.tgc.bike/images/dawes-spire-1-0-low-step-electric-hybrid-bike-p567-5671_image.jpg"), filename: "nes.png", content_type: "image/png")
bike5.save


bike6= Bike.new(price: 40, description: "Experience the thrill of riding together with the Adventure Duo Tandem Bike.", colour: "the Adventure Duo Tandem Bike", speed: 3, user: user)
bike6.photo.attach(io: URI.open("https://www.tgc.bike/images/dawes-combi-p80-68_image.jpg"), filename: "nes.png", content_type: "image/png")
bike6.save


bike1 = Bike.new(price: 20, description: "Conquer any trail with the Summit 5000, the ultimate off-road companion for adventurous rider.", colour: "the Summit 5000 Mountain Bike", speed: 5, user: user)
bike1.photo.attach(io: URI.open("https://i.stack.imgur.com/BOSno.jpg"), filename: "nes.png", content_type: "image/png")
bike1.save

bike2 = Bike.new(price: 35,  description: "Navigate the urban jungle with style and ease on the CitySprint commuter bike.", colour: "CitySprint Commuter Bike", speed: 3, user: user)
bike2.photo.attach(io: URI.open("https://i.ebayimg.com/images/g/Os4AAOSwPzhlEMoF/s-l1600.jpg"), filename: "nes.png", content_type: "image/png")
bike2.save


