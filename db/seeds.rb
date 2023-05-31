# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'

Favorite.destroy_all
Property.destroy_all
# Booking.where(property: Property.last).destroy_all
User.destroy_all

puts 'create users, properties, bookings...'

tom = User.create(email: 'tom@gmail.com', password: 'secret')
alice = User.create(email: 'alice@gmail.com', password: 'secret')
mark = User.create(email: 'mark@gmail.com', password: 'secret')

Property.create(
  title: " flat near Il Colosseo",
  capacity: rand(1..5),
  address: "Rome",
  summary: "Vista stupenda sul Colosseo. Da non perdere!",
  price_per_night: 120,
  number_of_rooms: rand(1..4),
  user_id: alice
)

Property.create(
  title: "Room near Tower Bridge",
  capacity: 2,
  address: "London",
  summary: "",
  price_per_night: 250,
  number_of_rooms: rand(1..4),
  user: alice
)

Property.create(
  title: "Flat near Dam Square",
  capacity: 2,
  address: "Amsterdam",
  summary: "By walking distance to all main monuments.",
  price_per_night: 300,
  number_of_rooms: rand(1..4),
  user: mark
)

Property.create(
  title: "Appartment in Brooklyn",
  capacity: 2,
  address: "New York",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: rand(1..4),
  user: tom
)

Property.create(
  title: "Room in De Pijp",
  capacity: 2,
  address: "Amsterdam",
  summary: "Room in clean and nice area of Amsterdam in the city center",
  price_per_night: 300,
  number_of_rooms: rand(1..4),
  user: mark
)

Property.create(
  title: "Room in Amsterdam Centraal",
  capacity: 2,
  address: "Amsterdam",
  summary: "Fantastic room in next to the main train station and the center in the city ",
  price_per_night: 300,
  number_of_rooms: rand(1..4),
  user: tom
)

Property.create(
  title: " Appartment near Lungo Tevere",
  capacity: rand(1..5),
  address: "Rome",
  summary: "Vista stupenda sul fiume. Da non perdere!",
  price_per_night: 120,
  number_of_rooms: rand(1..4),
  user: alice
)

Property.create(
  title: "Room near Tower Bridge",
  capacity: 2,
  address: "London",
  summary: "",
  price_per_night: 250,
  number_of_rooms: rand(1..4),
  user: alice
)

Property.create(
  title: "Flat near Dam Square",
  capacity: 2,
  address: "Amsterdam",
  summary: "By walking distance to all main monuments.",
  price_per_night: 300,
  number_of_rooms: rand(1..4),
  user: mark
)

# Booking.create!(
#   start_date: Date.today - 20,
#   end_date: Date.today - 10,
#   number_of_guests: rand(1..5),
#   user: alice,
#   property: Property.last,
#   status: "confirmed"
# )

puts 'users, properties, bookings...CREATED'
