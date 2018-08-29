# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new({name: 'Movie Theater', price: 2300000, image_url:'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwinjvvE7ZLdAhUwSN8KHYE-A8EQjRx6BAgBEAU&url=https%3A%2F%2Fwww.slashfilm.com%2Fmovie-theater-accident%2F&psig=AOvVaw13h2jrZwXEyZo4X9tCFVhj&ust=1535652500100557', description: 'This is a movie theater, it is nice and loving. You may call it a house if you would like.'})
product.save

product = Product.new({name: 'Elevator', price: 80000, image_url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjvMKmhA2XkV81Kn2PGVLw6r2jp0u5D2xTT60p8UXhj353VKK1Qw', description: 'This is a cute elevator. You may have tea inside it. You can be a big boy if you would like.'})
product.save

product = Product.new({name: 'Kingda Ka', price: 8000000, image_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Kingda_Ka.jpg/1200px-Kingda_Ka.jpg', description: 'This thang hits 128 or somethin like that. It is dopeacheenies.'})
product.save
