# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
User.create([
    { name: 'Admin', last_name: 'none', email: 'admin@buonaduona.com', password: 'bd_root2022', role: 'admin' }, # usuario administrador
    { name: 'Admin', last_name: 'none', email: 'admin@buonaduona.com', password: 'bd_root2022' } # usuario normal
])

Product.destroy_all
Product.create ([
    { name: 'Volcán de chocolate', description: 'bizcocho de sabor intenso', price: 18, stock: 30, available: true, category: 1 },
    { name: 'Muffin de chocolate salvaje', description: 'irresistible', price: 20, stock: 30, available: true, category: 1 },
    { name: 'Tarta de chocolate y frambuesas exóticas', description: '', price: 20, stock: 30, available: true, category: 1 },
    { name: 'Café de grano', description: 'El mejor café, ahora a tu alcance', price: 50, stock: 30, available: true, category: 2 },
    { name: 'Café insantáneo', description: 'Suave aroma para cada día', price: 18, stock: 30, available: true, category: 2 },
])
