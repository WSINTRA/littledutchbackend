https://github.com/WSINTRA/little-dutch-coffee-shop-remake

Rails backend

Users___
A user can login, save a shopping cart, view previous purchases, leave reviews and add products to a user list.
A user has a name, a password, an address, an email, an avatar, reviews, purchases, carts, lists belong to user
rails generate model User username password_digest address:text state city email avatar review:references

Products___
A product has a title, a rating, a description, a price, image, many reviews, can belong to a user list,
A product can be listed in the weekly menu or not. A product can be purchased. 
rails generate model Product title rating:integer description:text price:decimal image in_menu:boolean

Orders___
An order belongs to a User and contains cart products, Cart products are purchased and once purchase become the order. A user can have many orders. An order has many products through purchases. 
rails generate model Order user:references quantity:integer

Purchase___
A purchase belongs to a user and an order.
rails generate model Purchase order:references product:references

Review___
A review belongs to a user and a product. Has a title and content.
rails generate model Review user:references product:references title content

