# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "admin@gmail.com"
u.password = "beijing"
u.password_confirmation = "beijing"
u.is_admin = true
u.save

p = Product.new
p.title = "iPhone7"
p.description = ""
p.quantity = 100
p.price = 6000
p.image = "timg.jpeg"
p.save


p = Product.new
p.title = "iPhone7"
p.description = ""
p.quantity = 100
p.price = 6000
p.image = "timg.jpeg"
p.save
