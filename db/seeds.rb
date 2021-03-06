# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


10.times do 
	Product.create(
		title: Faker::Coffee.blend_name, 
		image: "https://images-na.ssl-images-amazon.com/images/I/81DLJc5I5XL._SL1280_.jpg" ,
		rating: rand(1..5),
		breed: Faker::Coffee.origin,
		in_menu: Faker::Boolean.boolean,
		price: rand(20..100),
		description: (Faker::Coffee.notes + ". From variety, " + Faker::Coffee.variety ) )
end



# 10.times do
# 	User.create(
# 		username: Faker::Name.first_name,
# 		password: "p455w0rd",
# 		address: Faker::Address.street_address,
# 		state: Faker::Address.state,
# 		city: Faker::Address.city,
# 		zip: Faker::Address.zip,
# 		email: Faker::Internet.free_email,
# 		avatar: "https://img.huffingtonpost.com/asset/5819e8c9190000a304c30664.jpeg" )
# end

User.create(username: "Admin", password: "p455w0rd",address: Faker::Address.street_address,
		state: Faker::Address.state,
		city: Faker::Address.city,
		zip: Faker::Address.zip,
		email: Faker::Internet.free_email,
		avatar: "https://cdn0.iconfinder.com/data/icons/cannabis-emoji/512/cannabis-18-512.png")