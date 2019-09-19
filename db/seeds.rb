# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'date'

james = User.create(username: "james", password: "password", email: Faker::Internet.email, avatar: Faker::Avatar.image)
sarah = User.create(username: "sarah", password: "password", email: Faker::Internet.email, avatar: Faker::Avatar.image)
tom = User.create(username: "tom", password: "password", email: Faker::Internet.email, avatar: Faker::Avatar.image)

cart_1 = Cart.create(name: "james' cart", total: 0.0, user_id: 1)

item_1 = LineItem.create(
    size: 11.5, 
    price: 75.0, 
    name: "Jordan XIX", 
    color_way: "Blue & White", 
    release_date: Date.new(2019, 1, 5), 
    image_url: "https://stockx.imgix.net/Air-Jordan-19-OG-SE-Olympic.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1538080256&w=1000"
)

cart_item = CartItem.create(cart_id: cart_1.id, line_item_id: item_1.id)