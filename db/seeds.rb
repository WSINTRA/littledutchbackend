# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


30.times do 
	Product.create(
		title: Faker::Cannabis.strain, 
		image: "https://gameupnutrition.com/wp-content/uploads/2019/01/IMG_2529.png" ,
		rating: rand(1..5),
		breed: Faker::Cannabis.type,
		in_menu: Faker::Boolean.boolean,
		price: rand(20..100),
		description: (Faker::Cannabis.health_benefit + ". Aka, " + Faker::Cannabis.medical_use ) )
end



10.times do
	User.create(
		username: Faker::Name.first_name,
		password_digest: "p455w0rd",
		address: Faker::Address.street_address,
		state: Faker::Address.state,
		city: Faker::Address.city,
		zip: Faker::Address.zip,
		email: Faker::Internet.free_email,
		avatar: "https://cdn0.iconfinder.com/data/icons/cannabis-emoji/512/cannabis-18-512.png" )
end

User.create(username: "Admin", password_digest: "p455w0rd",address: Faker::Address.street_address,
		state: Faker::Address.state,
		city: Faker::Address.city,
		zip: Faker::Address.zip,
		email: Faker::Internet.free_email,
		avatar: "https://cdn0.iconfinder.com/data/icons/cannabis-emoji/512/cannabis-18-512.png")