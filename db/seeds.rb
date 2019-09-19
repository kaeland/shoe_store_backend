require 'faker'
require 'date'

james = User.create(username: "james",balance: 100.0, password: "password", email: Faker::Internet.email, avatar: Faker::Avatar.image)
sarah = User.create(username: "sarah",balance: 100.0, password: "password", email: Faker::Internet.email, avatar: Faker::Avatar.image)
tom = User.create(username: "tom",balance: 100.0, password: "password", email: Faker::Internet.email, avatar: Faker::Avatar.image)

inventory_1 = Inventory.create(name: "james' inventory", user_id: james.id)
inventory_2 = Inventory.create(name: "sarah's inventory", user_id: sarah.id)
inventory_3 = Inventory.create(name: "tom's inventory", user_id: tom.id)

product_1 = Product.create(size: 11.5, price: 75.0, name: "Jordan XIX", color_way: "Blue & White", inventory_id: 1 ,release_date: Date.new(2019, 1, 5))
product_2 = Product.create(size: 10, price: 50.0, name: "Jordan XIX", color_way: "Blue & White", inventory_id: 1 ,release_date: Date.new(2011, 1, 5))
product_3 = Product.create(size: 8, price: 23.0, name: "Jordan XIX", color_way: "Blue & White", inventory_id: 1 ,release_date: Date.new(2008, 1, 5))

image_1 = Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZOI9AY6GHShz01GtCsGB-yoQyLJxM3CzP1esphlPGaPqexp2", product_id: 1)
image_2 = Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7rrog8be3f_GUlKvzRxfg3UYs3fHsym-VwQbJoTV3ymWgykiZ4w", product_id: 2)
image_3 = Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWPupZa5EVRLKBBINlmopWxd-r3KpE5e_AYZoTiK5eFvVcOf9n", product_id: 3)
