# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
paul, alia, leto = User.create([
  {name: 'Paul Atreides',  email: 'paul@arrakis.com', password: 'ironhack', password_confirmation: 'ironhack'},
  {name: 'Alia Atreides',  email: 'alia@arrakis.com',  password: 'ironhack', password_confirmation: 'ironhack'},
  {name: 'Leto Atreides', email: 'leto@arrakis.com',  password: 'ironhack', password_confirmation: 'ironhack'}
])

boat1 = Boat.create(size: 15.12, boat_plate: "7ª-AT-6-31-04")
boat2 = Boat.create(size:20.22, boat_plate: "7ª-AV-5-45-23")

dock1 = Dock.create(size: 17.34, price: 8.75, dock_plate: "A1234")
dock2 = Dock.create(size: 25.45, price: 11.23, dock_plate: "B5678")

harbor1 = Harbor.create(name:"Club Náutico de Sanxenxo")
harbor2 = Harbor.create(name:"Puerto de Ibiza")
