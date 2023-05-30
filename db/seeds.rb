# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Property.delete_all

Property.create(
  title: "Tower Bridge",
  capacity: 2,
  address: "London",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: 1
)

Property.create(
  title: "Dam Square",
  capacity: 2,
  address: "Amsterdam",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: 4
)

Property.create(
  title: "Il Colosseo",
  capacity: 5,
  address: "Rome",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: 3
)
