# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Favorite.destroy_all
Property.destroy_all
User.destroy_all
tom = User.create!(email: "tom@gmail.com", password: "secret")
ben = User.create!(email: "ben@gmail.com", password: "secret")
property_tom_london = Property.create!(
  capacity: 2,
  address: "London",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: 1,
  user: tom,
  title: "prop1"
)

property_tom_amsterdam = Property.create!(
  capacity: 2,
  address: "Amsterdam",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: 1,
  user: tom,
  title: "prop2"
)

property_ben_paris = Property.create!(
  capacity: 3,
  address: "Paris",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: 1,
  user: ben,
  title: "prop3"
)

Favorite.create!(
  user: ben,
  property: property_tom_london
)

Favorite.create!(
  user: ben,
  property: property_tom_amsterdam
)
