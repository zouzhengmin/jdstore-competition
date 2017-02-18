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
p.title = "Griffon Helmet"
p.description = ""
p.quantity = 100
p.price = 2888
p.image = "https://jdstore-seoul.s3.amazonaws.com/7v2t2.jpg"
p.save


p = Product.new
p.title = "Burton-Malavita"
p.description = ""
p.quantity = 100
p.price = 3000
p.image = "https://jdstore-seoul.s3.amazonaws.com/tq9su.jpg"
p.save
