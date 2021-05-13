# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting the seed"

puts "Deleting all data"
School.destroy_all
User.destroy_all
Category.destroy_all
Item.destroy_all
Rental.destroy_all

puts "Creating users"
user1 = User.create({ email: "jack@middleton.com", password: "123456"})
user2 = User.create({ email: "francisca@best.com", password: "123456"})

puts "Creating schools"
school1 = School.create({ name: "WindSpirit Club", street: "Av. do Mar", city: "Fonte da Telha", email: "info@windspiritclub.pt", phone: "+351961234567", user: user1 })

school2 = School.create({name: "Boarder Club Portugal", street: "Rua do Sol", city: "Caparica", email: "info@boarderclub.pt", phone: "+35191987654", user: user2 })

puts "Creating categories"
category_surf = Category.create ({ name: "Surf", description: "Enjoy the day with a sufing experience"})
category_sup = Category.create({ name: "SUP", description: "Relax sliding over the water"})

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
