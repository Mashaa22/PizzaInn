# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed data for restaurants
Restaurant.create([
    { name: 'Pizza Palace', location: 'Nairobi' },
    { name: 'Italian Kitchen', location: 'Westlands' },
    { name: 'Pizza Express', location: 'Kasarani' }
  ])
  
  # Seed data for pizzas
  Pizza.create([
    { name: 'Margherita', ingredients: 'Tomato, Mozzarella, Basil' },
    { name: 'Pepperoni', ingredients: 'Tomato, Mozzarella, Pepperoni' },
    { name: 'Hawaiian', ingredients: 'Tomato, Mozzarella, Ham, Pineapple' }
  ])
  
  # Seed data for restaurant_pizzas
  RestaurantPizza.create([
    { price: '25', restaurant_id: 1, pizza_id: 1 },
    { price: '11', restaurant_id: 2, pizza_id: 2 },
    { price: '27', restaurant_id: 3, pizza_id: 3 }
  ])
  