# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Property.create(capacity: 2, address: "amsterdam", summary: "a nice room", price_per_night: 150, type: "private room", number_of_rooms: 1)

Property.create(
    capacity: 2,
    address: "London",
    summary: "good room!",
    price_per_night: 300,
    number_of_rooms: 1
  )

Property.create(
    capacity: 2,
    address: "Amsterldam",
    summary: "nice room!",
    price_per_night: 200,
    number_of_rooms: 1
  )

Property.create(
    capacity: 2,
    address: "Madrid",
    summary: "amazing room!",
    price_per_night: 100,
    number_of_rooms: 1
  )


