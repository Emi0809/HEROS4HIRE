require 'date'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

#Users
puts 'destroying all the users..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'
Booking.destroy_all
Superhero.destroy_all
User.destroy_all

puts 'creating new users....'

new_user = User.create(email: "bob@gmail.com", password: "123456")

#second_user = User.create(email: "mary@gmail.com", password: "123456")

puts "Created #{User.count} users"

#Superheros
puts 'destroying all the superheros..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'

puts 'creating new superheros....'
    superhero = Superhero.create(
    name: Faker::Superhero.name,
    description: Faker::Superhero.descriptor,
    price: Faker::Commerce.price,
    superpower: Faker::Superhero.power,
    user_id: new_user.id
  )
puts "Created #{Superhero.count} superheros"

#Bookings
puts 'destroying all the bookings..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'

puts 'creating new bookings....'
  Booking.create(
  start_date: Faker::Date.between(from: '2023-02-05', to: '2023-02-28'),
  end_date: Faker::Date.between(from: '2023-02-28', to: '2023-03-30'),
  superhero_id: superhero.id,
  user_id: new_user.id
  )
puts "Created #{Booking.count} bookings"
