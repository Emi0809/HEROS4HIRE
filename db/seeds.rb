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

emilie = User.create(email: "emilie@gmail.com", password: "123456")
jose = User.create(email: "jose@gmail.com", password: "123456")
alex = User.create(email: "mary@gmail.com", password: "123456")

puts "Created #{User.count} users"

#Superheros
puts 'destroying all the superheros..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'

puts 'creating new superheros....'

location = ['london', 'rome', 'mallorca', 'barcelona']

spiderman = Superhero.create(
  name: "Spiderman",
  description: "Your best friend and coolest superhero",
  price: 100,
  superpower: "superweb",
  photo_url:"https://blog.playstation.com/tachyon/2022/06/0c3c20a8d8514501524a0859461f391572ea6e61.jpg",
  user_id: jose.id,
  address: location.sample
)

batman = Superhero.create(
  name: "Batman",
  description: "I am very serious guy but I am soft inside, Also I am rich",
  price: 200000000,
  superpower: "super intelligence",
  photo_url:"https://live.staticflickr.com/3433/3987139213_2b2cdab4a7_b.jpg",
  user_id: jose.id,
  address: location.sample
)

barbarian = Superhero.create(
  name: "Barbarian",
  description: "I am a latino Lover",
  price: 500000,
  superpower: "The power of knowledge",
  photo_url: "https://cdn.britannica.com/31/182831-050-3F0A0CCE/Arnold-Schwarzenegger-title-character-Conan-the-Destroyer.jpg?w=300&h=300",
  user_id: jose.id,
  address: location.sample
)

thor = Superhero.create(
  name: "Thor",
  description: "I am the God of Gods and I have an amazing hair",
  price: 100000000,
  superpower: "The power of love",
  photo_url: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
  user_id: jose.id,
  address: location.sample
)

aquaman = Superhero.create(
  name: "Aquaman",
  description: "I just swim and my only friends are fishes",
  price: 1,
  superpower: "just a normal guy that knows how to swim",
  photo_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/aquaman-1550228807.jpg?crop=0.796xw:0.796xh;0.156xw,0.112xh&resize=1200:*",
  user_id: jose.id,
  address: location.sample
)

wonderwoman = Superhero.create(
  name: "Wonderwoman",
  description: "I am an exotic Amazon kicker asses. I am the ultimate mix of beauty",
  price: 69,
  superpower: "Flying",
  photo_url: "https://i.pinimg.com/originals/7c/70/85/7c70855b38a9fb0c561dd84d4f1eaeab.jpg",
  user_id: alex.id,
  address: location.sample
)

hulk = Superhero.create(
  name: "The Incredible Hulk",
  description: "Hulk smash!",
  price: 1_000_000,
  superpower: "Smashing things!",
  user_id: alex.id,
  photo_url: "https://hulkcollection.files.wordpress.com/2019/09/ummm4.jpg",
  address: location.sample
)

buzz = Superhero.create(
  name: "Buzz Light-Year",
  description: "To infinity, and beyond!",
  price: 2,
  superpower: "Randomly dying when his human walks in.",
  user_id: alex.id,
  photo_url: "https://img-9gag-fun.9cache.com/photo/aze5yxq_460s.jpg",
  address: location.sample
)


ironman = Superhero.create(
  name: "Iron-Man",
  description: "Proficient scientist and engineer, Genius level intellect, Superhuman strength",
  price: 52,
  superpower: "Who even knows",
  user_id: alex.id,
  photo_url: "https://i.pinimg.com/originals/89/2f/50/892f500552fd3367c16ec1dc95c0ef66.jpg",
  address: location.sample
)
robin = Superhero.create(
  name: "Robin",
  description: "sidekick",
  price: 80_085,
  superpower: "Sponging off of Batman's success",
  user_id: alex.id,
  photo_url: "https://64.media.tumblr.com/399b59ce79556d2eaed1f04bab8b7a8c/c96a9bda17f417e8-26/s640x960/7af381b3c7f0b714d198328263d3090eec06a44c.jpg",
  address: location.sample
)
puts "Created #{Superhero.count} superheros"

#Bookings
puts 'destroying all the bookings..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'


# puts 'creating new bookings....'
#   Booking.create(
#   start_date: Faker::Date.between(from: '2023-02-05', to: '2023-02-28'),
#   end_date: Faker::Date.between(from: '2023-02-28', to: '2023-03-30'),
#   superhero_id: superhero.id,
#   user_id: new_user.id
#   )
# puts "Created #{Booking.count} bookings"
