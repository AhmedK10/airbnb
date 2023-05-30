# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Property.create(capacity: 2, address: "amsterdam", summary: "a nice room", price_per_night: 150, type: "private room", number_of_rooms: 1)

Booking.destroy_all
Property.destroy_all
User.destroy_all

tom = User.create!(email: "tom@gmail.com", password: "secret")
ben = User.create!(email: "ben@gmail.com", password: "secret")

Property.create!(
  capacity: 2,
  address: "London",
  summary: "good room!",
  price_per_night: 300,
  number_of_rooms: 1,
  user: tom
)

Booking.create!(
  start_date: Date.today - 20,
  end_date: Date.today - 10,
  total_price: 100,
  number_of_guests: 2,
  user: ben,
  property: Property.last,
  status: "confirmed"
)