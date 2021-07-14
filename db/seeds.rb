# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{ title: 'Track Bolts'}, { title: 'Rail Joints'}, { title: 'Railroad Track'}, { title: 'Railway Switch'}, { title: 'Tie Plate'}, { title: 'Rail Clamp'}])

category = Category.find_by title: 'Track Bolts'
Product.create(name: "Tunnel Bolt", category_id: category.id, price: 2.99)
Product.create(name: "Anchor Bolt", category_id: category.id, price: 5.99)
Product.create(name: "T-Bolt", category_id: category.id, price: 6.99)
Product.create(name: "Diamond Bolt", category_id: category.id, price: 7.99)
Product.create(name: "Special Bolt", category_id: category.id, price: 9.99)

category = Category.find_by title: 'Rail Joints'
Product.create(name: "Chinese Standard Rail Joint", category_id: category.id, price: 14.99)
Product.create(name: "AREMA Standard Rail Joint", category_id: category.id, price: 15.79)
Product.create(name: "DIN Standard Rail Joint", category_id: category.id, price: 16.49)
Product.create(name: "UIC Railway Rail Joint", category_id: category.id, price: 17.49)
Product.create(name: "BS Standard Rail Joint", category_id: category.id, price: 17.99)

category = Category.find_by title: 'Railroad Track'
Product.create(name: "GB Crane Rails", category_id: category.id, price: 21.49)
Product.create(name: "UIC 870", category_id: category.id, price: 21.99)
Product.create(name: "AREMA", category_id: category.id, price: 22.49)
Product.create(name: "GB 2007", category_id: category.id, price: 23.49)
Product.create(name: "GB 11264", category_id: category.id, price: 23.99)

category = Category.find_by title: 'Railway Switch'
Product.create(name: "Simple Turnout", category_id: category.id, price: 19.99)
Product.create(name: "Slip Switch", category_id: category.id, price: 21.01)
Product.create(name: "Equilateral Turnout", category_id: category.id, price: 22.33)
Product.create(name: "Three-way Turnout", category_id: category.id, price: 25.79)

category = Category.find_by title: 'Tie Plate'
Product.create(name: "AREMA Standard Tie Plate", category_id: category.id, price: 11.99)
Product.create(name: "Single Shoulder Tie Plates", category_id: category.id, price: 12.50)
Product.create(name: "Casting Rail Tie Plate", category_id: category.id, price: 12.99)
Product.create(name: "AREMA Hook Twin Tie Plate", category_id: category.id, price: 12.99)
Product.create(name: "Plates KPO Fastening Systems", category_id: category.id, price: 13.49)
Product.create(name: "Double Shoulder Base Plate", category_id: category.id, price: 14.99)

category = Category.find_by title: 'Rail Clamp'
Product.create(name: "K Type Rail Clamp", category_id: category.id, price: 4.59)
Product.create(name: "Crane Clamp", category_id: category.id, price: 4.99)
Product.create(name: "KPO Rail Clamp", category_id: category.id, price: 5.59)
Product.create(name: "Crane Clamp Double", category_id: category.id, price: 5.99)
Product.create(name: "MTH Clamp", category_id: category.id, price: 6.99)