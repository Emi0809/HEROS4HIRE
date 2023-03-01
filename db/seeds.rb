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

spiderman = Superhero.create(
  name: "Spiderman",
  description: "Your best friend and coolest superhero",
  price: 100,
  superpower: "superweb",
  photo_url:"https://blog.playstation.com/tachyon/2022/06/0c3c20a8d8514501524a0859461f391572ea6e61.jpg",
  user_id: jose.id
)

batman = Superhero.create(
  name: "Batman",
  description: "I am very serious guy but I am soft inside, Also I am rich",
  price: 200000000,
  superpower: "super intelligence",
  photo_url:"https://live.staticflickr.com/3433/3987139213_2b2cdab4a7_b.jpg",
  user_id: jose.id
)

barbarian = Superhero.create(
  name: "Barbarian",
  description: "I am a latino Lover",
  price: 500000,
  superpower: "The power of knowledge",
  photo_url: "https://cdn.britannica.com/31/182831-050-3F0A0CCE/Arnold-Schwarzenegger-title-character-Conan-the-Destroyer.jpg?w=300&h=300",
  user_id: jose.id
)

thor = Superhero.create(
  name: "Thor",
  description: "I am the God of Gods and I have an amazing hair",
  price: 100000000,
  superpower: "The power of love",
  photo_url: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
  user_id: jose.id
)

aquaman = Superhero.create(
  name: "Aquaman",
  description: "I just swim and my only friends are fishes",
  price: 1,
  superpower: "just a normal guy that knows how to swim",
  photo_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/aquaman-1550228807.jpg?crop=0.796xw:0.796xh;0.156xw,0.112xh&resize=1200:*",
  user_id: jose.id
)

wonderwoman = Superhero.create(
  name: "Wonderwoman",
  description: "Wonder Woman is like a fierce and fabulous Amazonian goddess who can kick butt and take names while rocking a tiara and bullet-deflecting bracelets. She's got more strength than a lasso of truth and more style than a superhero fashion runway show. And let's not forget about her invisible jet - it's like the ultimate Uber ride, except you can't see it and the driver is a demigoddess. Overall, Wonder Woman is the ultimate mix of beauty, brains, and brawn, and she's not afraid to use all of them to save the world!",
  price: 69,
  superpower: "Flying",
  user_id: alex.id,
  photo_url: "https://i.pinimg.com/originals/7c/70/85/7c70855b38a9fb0c561dd84d4f1eaeab.jpg",
)

hulk = Superhero.create(
  name: "The Incredible Hulk",
  description: "The Hulk is like a walking talking rage monster, with muscles bigger than a boulder and a temper hotter than a volcano. When he's not smashing things, he's probably just really angry about something, like forgetting his keys or spilling his coffee. And don't even get him started on traffic - that's enough to turn him green with rage! But let's face it, when you need someone to do some serious heavy lifting or demolishing, the Hulk is your guy. Just don't make him mad, or you might end up with a one-way ticket to outer space!",
  price: 1_000_000,
  superpower: "Look at him!!",
  user_id: alex.id,
  photo_url: "https://hulkcollection.files.wordpress.com/2019/09/ummm4.jpg",
)

buzz = Superhero.create(
  name: "Buzz Light-Year",
  description: "Buzz Lightyear is like a space cadet on a mission to infinity and beyond, with a laser blaster that's more powerful than a pack of angry aliens. He's got a heart of plastic and the courage of a spork, which is pretty impressive if you ask me. Plus, he's got wings that pop out of his back like a giant toy surprise, which is perfect for those times when you need to make a quick escape from Andy's room. And let's not forget his catchphrase - To infinity and beyond! - which is like the superhero version of I'll be back. All in all, Buzz Lightyear is the ultimate action figure come to life, and he's ready to take on the universe, one toy box at a time!",
  price: 2,
  superpower: "Randomly dying when his human walks in.",
  user_id: alex.id,
  photo_url: "https://img-9gag-fun.9cache.com/photo/aze5yxq_460s.jpg",
)

ironman = Superhero.create(
  name: "Iron-Man",
  description: "Iron Man is like a billionaire playboy with a fancy suit that's more high-tech than a NASA spaceship. He's got gadgets and gizmos aplenty, and a snarky sense of humor to match. Tony Stark may be a genius inventor, but he's also a bit of a show-off, with his suit covered in flashy lights and colors that scream, look at me, I'm a superhero! And let's not forget about his epic beard - it's like he's trying to prove that even a superhero can rock a lumberjack look. But when it comes down to it, Iron Man is the ultimate protector of the planet, and he's not afraid to put his high-tech toys to use to save the day. Just don't ask him to share his toys with anyone else - that's a battle he's not likely to win!",
  price: 52,
  superpower: "Who even knows",
  user_id: alex.id,
  photo_url: "https://i.pinimg.com/originals/89/2f/50/892f500552fd3367c16ec1dc95c0ef66.jpg",
)
robin = Superhero.create(
  name: "Robin",
  description: "Robin is like the ultimate superhero sidekick - he's got all the enthusiasm of a golden retriever and the fashion sense of a peacock. He's always eager to lend a helping hand, even if that means he's just there to hold Batman's cape while he does the real hero stuff. And let's not forget about his signature green and yellow costume - it's like he's trying to blend in with a pack of highlighters. But even though he may not be the dark knight's equal in terms of strength or brains, Robin's got heart, and that's what counts. He's like the little brother that Batman never wanted, but secretly loves anyway. So if you're ever in Gotham City and you need a hero to show you around, just look for the guy in the neon tights - he's ready to save the day, one awkward high-five at a time!",
  price: 80_085,
  superpower: "Sponging off of Batman's success",
  user_id: alex.id,
  photo_url: "https://64.media.tumblr.com/399b59ce79556d2eaed1f04bab8b7a8c/c96a9bda17f417e8-26/s640x960/7af381b3c7f0b714d198328263d3090eec06a44c.jpg",
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
