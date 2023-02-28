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

alex = User.create(email: "mary@gmail.com", password: "123456")

puts "Created #{User.count} users"

#Superheros
puts 'destroying all the superheros..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'

puts 'creating new superheros....'
wonderwoman = Superhero.create(
  name: "Wonderwoman",
  description: "Wonder Woman is like a fierce and fabulous Amazonian goddess who can kick butt and take names while rocking a tiara and bullet-deflecting bracelets. She's got more strength than a lasso of truth and more style than a superhero fashion runway show. And let's not forget about her invisible jet - it's like the ultimate Uber ride, except you can't see it and the driver is a demigoddess. Overall, Wonder Woman is the ultimate mix of beauty, brains, and brawn, and she's not afraid to use all of them to save the world!",
  price: 69,
  superpower: "Flying",
  user_id: alex.id,
  photo_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.logotv.com%2Fnews%2Fwai3xs%2Fwonder-woman-cosplay&psig=AOvVaw1q5dN7TxBKFzoeWr9F_n8l&ust=1677687565480000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJDjmK3PuP0CFQAAAAAdAAAAABAO",
)

hulk = Superhero.create(
  name: "The Incredible Hulk",
  description: "The Hulk is like a walking talking rage monster, with muscles bigger than a boulder and a temper hotter than a volcano. When he's not smashing things, he's probably just really angry about something, like forgetting his keys or spilling his coffee. And don't even get him started on traffic - that's enough to turn him green with rage! But let's face it, when you need someone to do some serious heavy lifting or demolishing, the Hulk is your guy. Just don't make him mad, or you might end up with a one-way ticket to outer space!",
  price: 1_000_000,
  superpower: "Look at him!!",
  user_id: alex.id,
  photo_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fhulkcollection.wordpress.com%2F2020%2F02%2F26%2Fummm-part-77%2F&psig=AOvVaw1I0ym9sr2jxwmentig8QD8&ust=1677687650413000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPDN7dXPuP0CFQAAAAAdAAAAABAH",
)

buzz = Superhero.create(
  name: "Buzz Light-Year",
  description: "Buzz Lightyear is like a space cadet on a mission to infinity and beyond, with a laser blaster that's more powerful than a pack of angry aliens. He's got a heart of plastic and the courage of a spork, which is pretty impressive if you ask me. Plus, he's got wings that pop out of his back like a giant toy surprise, which is perfect for those times when you need to make a quick escape from Andy's room. And let's not forget his catchphrase - To infinity and beyond! - which is like the superhero version of I'll be back. All in all, Buzz Lightyear is the ultimate action figure come to life, and he's ready to take on the universe, one toy box at a time!",
  price: 2,
  superpower: "Randomly dying when his human walks in.",
  user_id: alex.id,
  photo_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F717831628076001084%2F&psig=AOvVaw1FKNAmCsNZNPL_ouf0IVpS&ust=1677687677239000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKj6v-LPuP0CFQAAAAAdAAAAABAE",
)

ironman = Superhero.create(
  name: "Buzz Light-Year",
  description: "Iron Man is like a billionaire playboy with a fancy suit that's more high-tech than a NASA spaceship. He's got gadgets and gizmos aplenty, and a snarky sense of humor to match. Tony Stark may be a genius inventor, but he's also a bit of a show-off, with his suit covered in flashy lights and colors that scream, look at me, I'm a superhero! And let's not forget about his epic beard - it's like he's trying to prove that even a superhero can rock a lumberjack look. But when it comes down to it, Iron Man is the ultimate protector of the planet, and he's not afraid to put his high-tech toys to use to save the day. Just don't ask him to share his toys with anyone else - that's a battle he's not likely to win!",
  price: 52,
  superpower: "Who even knows",
  user_id: alex.id,
  photo_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ebay.co.uk%2Fp%2F1277829482&psig=AOvVaw2Wxcj5UYtTW2lFlrUoDCXx&ust=1677687730954000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLCmmvzPuP0CFQAAAAAdAAAAABAE",
)

robin = Superhero.create(
  name: "Robin",
  description: "Robin is like the ultimate superhero sidekick - he's got all the enthusiasm of a golden retriever and the fashion sense of a peacock. He's always eager to lend a helping hand, even if that means he's just there to hold Batman's cape while he does the real hero stuff. And let's not forget about his signature green and yellow costume - it's like he's trying to blend in with a pack of highlighters. But even though he may not be the dark knight's equal in terms of strength or brains, Robin's got heart, and that's what counts. He's like the little brother that Batman never wanted, but secretly loves anyway. So if you're ever in Gotham City and you need a hero to show you around, just look for the guy in the neon tights - he's ready to save the day, one awkward high-five at a time!",
  price: 80_085,
  superpower: "Sponging off of Batman's success",
  user_id: alex.id,
  photo_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Frockin-robinz.tumblr.com%2Fpost%2F633681448201764864%2Fembed&psig=AOvVaw04DOIFCWSA1k9PKreAJqfd&ust=1677687759976000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPiI8onQuP0CFQAAAAAdAAAAABAE",
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
