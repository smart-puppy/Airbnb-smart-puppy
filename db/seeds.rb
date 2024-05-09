

User.destroy_all
Bike.destroy_all


user = User.create(email:"test@test.com", password:123456)


bike1 = Bike.new(price: 20, description: "amazing", colour: "black", speed: 5, user: user)
bike1.save

bike1 = Bike.new(price: 35, description: "amazing", colour: "green", speed: 3, user: user)
bike1.save

bike1 = Bike.new(price: 6, description: "cheap", colour: "pink", speed: 2, user: user)
bike1.save

bike1 = Bike.new(price: 255, description: "expensive", colour: "yellow", speed: 1, user: user)
bike1.save
