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


