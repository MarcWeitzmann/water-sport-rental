puts "Starting the seed"

puts "Deleting all data"
Item.destroy_all
School.destroy_all
User.destroy_all
Category.destroy_all
Rental.destroy_all

puts "Creating users"
user1 = User.create({ email: "jack@middleton.com", password: "123456"})
user2 = User.create({ email: "francisca@best.com", password: "123456"})

puts "Creating schools"
school1 = School.create({ name: "WindSpirit Club", street: "Rua das Camélias", city: "Costa da Caparica", email: "info@windspiritclub.pt", phone: "+351961234567", user: user1 })

school2 = School.create({name: "Boarderclub Portugal", street: "Praia da Nova Vaga", city: "Costa da Caparica", email: "info@boarderclub.pt", phone: "+35191987654", user: user2 })

puts "Creating categories"
category_surf = Category.create ({ name: "Surf", description: "Surfing is not only a sport, it's a life style", image_name: "surfing.jpg"})
category_sup = Category.create({ name: "SUP", description: "Paddleboarding heals the soul", image_name: "SUP.jpg"})
category_kitesurf = Category.create({ name: "Kitesurf", description: "It's more fun if you just let the wind carry you", image_name: "kitesurf.jpg"})
category_lesson = Category.create({ name: "Lesson", description: "You can't stop the waves so learn how to surf", image_name: "lesson.jpg"})

puts "Creating items"
item1001 = Item.create({ name: "3.5 Surfboard", description: "For all conditions", price: 30, category: category_surf, school: school1 })

item1002 = Item.create({ name: "Bodyboard", description: "If you like it quick", price: 20, category: category_surf, school: school1 })

item1003 = Item.create({ name: "Inflatable SUP", description: "For all needs", price: 35, category: category_sup, school: school1 })

item1004 = Item.create({ name: "6.0 SUP", description: "Professional SUP", price: 55, category: category_sup, school: school1 })

item2001 = Item.create({ name: "Bodyboard Child", description: "If you like it small", price: 15, category: category_surf, school: school2 })

item2002 = Item.create({ name: "Surfsuit", description: "Keeps you warm", price: 25, category: category_surf, school: school2 })

item2003 = Item.create({ name: "Inflatable SUP", description: "For all needs", price: 35, category: category_sup, school: school2 })

item2004 = Item.create({ name: "6.3 SUP", description: "Professional SUP", price: 55, category: category_sup, school: school2 })


puts "Creating rentals"
rental1 = Rental.create({start_day: 12-04-2021, end_day:13-04-2021, start_time: "10:00:00", end_time: "12:00:00"})

rental2 = Rental.create({start_day: 20-04-2021, end_day:22-04-2021, start_time: "09:00:00", end_time: "12:00:00"})

puts "Seed is finished"
