https://github.com/WSINTRA/little-dutch-coffee-shop-remake

Download frontend
>git clone https://github.com/WSINTRA/little-dutch-coffee-shop-remake

>cd little-dutch-coffee-shop-remake

>npm install

>npm start

Rails backend
>git clone https://github.com/WSINTRA/littledutchbackend

>cd littledutchbackend

>bundle install

DB is setup to work with PostgreSQL,

>rails db:create

>rails db:migrate

>rails db:seed

>rails s -p 3050


-- Make sure you run rails console and create a new user to be admin, like so..

```
User.create(
username: "Admin", 
password_digest: "p455w0rd",address: Faker::Address.street_address,
    state: Faker::Address.state,
    city: Faker::Address.city,
    zip: Faker::Address.zip,
    email: Faker::Internet.free_email,
    avatar: "https://cdn0.iconfinder.com/data/icons/cannabis-emoji/512/cannabis-18-512.png")
    ```

Users___
A user can login, save a shopping cart, view previous purchases, leave reviews and add products to a user list.
A user has a name, a password, an address, an email, an avatar, reviews, purchases, carts, lists belong to user
rails generate model User username password_digest address:text state city email avatar review:references staff:boolean

Staff___
Staff can login, add new products, change the weekly menu, if admin they can create new staff.
To make a purchase they must also have a user account, with that they get a discount, auto applied.
rails generate model Staff username password_digest email admin:boolean

Products___
A product has a title, a rating, a description, a price, image, many reviews, can belong to a user list,
A product can be listed in the weekly menu or not. A product can be purchased. 
rails generate model Product title rating:integer breed description:text price:decimal image in_menu:boolean

Cart___
A cart belongs to a user, a user can have many carts, a cart has many products. An order has one cart. 
rails generate model Cart user:references product:references 

Cart_products____
A join table for products in the cart
rails generate model Cart_Product cart:references product:references

Orders___
An order belongs to a User and contains cart products, Cart products are purchased and once purchase become the order. A user can have many orders. An order has many products through purchases. 
rails generate model Order user:references quantity:integer total:decimal

Purchase___
A purchase belongs to a user and an order.
rails generate model Purchase order:references product:references

Review___
A review belongs to a user and a product. Has a title and content.
rails generate model Review user:references product:references title content:text


//////////////////DEMO FETCH REQUESTs//////////////////
```javascript
fetch('http://localhost:3000/v1/users', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    Accept: 'application/json'
  },
  body: JSON.stringify({
    user: {
      username: 'guy',
      password: 'hi',
      address: 'King of Flavortown, USA',
      state: 'NY',
      city: 'New York',
      email:'someplace@home.com',
      staff: false
      avatar: 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Guy_Fieri_at_Guantanamo_2.jpg'
    }
  })
})
  .then(r => r.json())
  .then(console.log)
  //////////////////////////////////////////////////
  fetch('http://localhost:3000/api/v1/profile', {
  method: 'GET',
  headers: {
    Authorization: `Bearer <token>`
  }
})
```
//////////////////////////////////////////////////////

