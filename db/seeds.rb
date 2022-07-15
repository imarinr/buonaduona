# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
User.create(name:'invitado')

Product.destroy_all
Product.create ([
    { name: 'Concha', description: 'Suave y con cubierta de chocolate', price: 10, stock: 30, available: true },
    { name: 'Dona', description: 'Suave y con cubierta de chocolate', price: 10, stock: 30, available: true },
    { name: 'Bolillo', description: 'Suave y combina con todo', price: 2, stock: 30, available: true },
    { name: 'Rollo de piña', description: 'Pan de ojaldre dorado y con relleno de piña natural', price: 10, stock: 30, available: true },
    { name: 'Rol de canela', description: 'Suavidad y sabor que a todos encanta', price: 10, stock: 30, available: true },
])
