Supplier.create(name: "Dani asd", email: "dwill@sdoka.com", phone_number: "123-432-4235")
Supplier.create(name: "Mr Ma", email: "dwilel@sdoka.com", phone_number: "123-432-4321")
Supplier.create(name: "Perry Dah", email: "dwilasdfl@sdoka.com", phone_number: "123-432-1234")
Supplier.create(name: "FIL BOI", email: "dwilsdfgkl@sdoka.com", phone_number: "123-432-5435")
Supplier.create(name: "OM MSALD", email: "dsdwill@sdoka.com", phone_number: "123-432-6235")
Supplier.create(name: "POEW LOP", email: "dwicdjksnll@sdoka.com", phone_number: "123-132-4235")
Supplier.create(name: "Dsad mDKMSc", email: "dwicaslkmll@sdoka.com", phone_number: "123-332-4235")


Product.create!([
  {name: "Movie Theater", price: "2300000.0", description: "This is a movie theater, it is nice and loving. You may call it a house if you'd like.", in_stock: nil, supplier_id: 1},
  {name: "Elevator", price: "80000.0", description: "This is a cute elevator. You may have tea inside it. You can be elmo if you'd like.", in_stock: nil, supplier_id: 1},
  {name: "Kingda Ka", price: "8000000.0", description: "This thang hits 128 or somethin like that. It's dopeacheenies.", in_stock: nil, supplier_id: 1}
])

Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Kingda_Ka.jpg/1200px-Kingda_Ka.jpg", product_id: 1)
Image.create(url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwinjvvE7ZLdAhUwSN8KHYE-A8EQjRx6BAgBEAU&url=https%3A%2F%2Fwww.slashfilm.com%2Fmovie-theater-accident%2F&psig=AOvVaw13h2jrZwXEyZo4X9tCFVhj&ust=1535652500100557", product_id: 2)
Image.create(url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwinjvvE7ZLdAhUwSN8KHYE-A8EQjRx6BAgBEAU&url=https%3A%2F%2Fwww.slashfilm.com%2Fmovie-theater-accident%2F&psig=AOvVaw13h2jrZwXEyZo4X9tCFVhj&ust=1535652500100557", product_id: 3)
Image.create(url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwinjvvE7ZLdAhUwSN8KHYE-A8EQjRx6BAgBEAU&url=https%3A%2F%2Fwww.slashfilm.com%2Fmovie-theater-accident%2F&psig=AOvVaw13h2jrZwXEyZo4X9tCFVhj&ust=1535652500100557", product_id: 4)
Image.create(url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwinjvvE7ZLdAhUwSN8KHYE-A8EQjRx6BAgBEAU&url=https%3A%2F%2Fwww.slashfilm.com%2Fmovie-theater-accident%2F&psig=AOvVaw13h2jrZwXEyZo4X9tCFVhj&ust=1535652500100557", product_id: 5)
Image.create(url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwinjvvE7ZLdAhUwSN8KHYE-A8EQjRx6BAgBEAU&url=https%3A%2F%2Fwww.slashfilm.com%2Fmovie-theater-accident%2F&psig=AOvVaw13h2jrZwXEyZo4X9tCFVhj&ust=1535652500100557", product_id: 6)
Image.create(url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwinjvvE7ZLdAhUwSN8KHYE-A8EQjRx6BAgBEAU&url=https%3A%2F%2Fwww.slashfilm.com%2Fmovie-theater-accident%2F&psig=AOvVaw13h2jrZwXEyZo4X9tCFVhj&ust=1535652500100557", product_id: 7)
