# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Favorite.destroy_all
Review.destroy_all
Booking.destroy_all
Property.destroy_all
User.destroy_all

#Users:
#tom, ben are hosts
#alex, david and john are guests

firstnames = ["tom", "alex", "john", "david", "ben"]
tom = User.create!(
  email: "#{firstnames[0]}@gamil.com",
  first_name: firstnames[0].capitalize,
  last_name: Faker::Name.last_name,
  password: 'secret',
  is_owner: true
  )

alex = User.create!(
  email: "#{firstnames[1]}@gamil.com",
  first_name: firstnames[1].capitalize,
  last_name: Faker::Name.last_name,
  password: 'secret'
  )

john = User.create!(
  email: "#{firstnames[2]}@gamil.com",
  first_name: firstnames[2].capitalize,
  last_name: Faker::Name.last_name,
  password: 'secret'
  )

david = User.create!(
  email: "#{firstnames[3]}@gamil.com",
  first_name: firstnames[3].capitalize,
  last_name: Faker::Name.last_name,
  password: 'secret'
  )

ben = User.create!(
  email: "#{firstnames[4]}@gamil.com",
  first_name: firstnames[4].capitalize,
  last_name: Faker::Name.last_name,
  password: 'secret',
  is_owner: true
  )

#Properties:
guests = [david, alex, john]
hosts = [tom, ben]
10.times do
  Property.create!(
    title: Faker::Address.community,
    address: Faker::Address.full_address,
    summary: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.between(from: 100, to: 500),
    number_of_rooms: Faker::Number.between(from: 1, to: 5),
    capacity: Faker::Number.between(from: 1, to: 3),
    user: hosts.sample
  )
end

#Bookings:
bookings = []
10.times do
booking = Booking.create!(
    start_date: Faker::Date.between(from: Date.parse('2023-01-01'), to: Date.parse('2023-06-31')),
    end_date: Faker::Date.between(from: Date.parse('2023-07-01'), to: Date.parse('2023-12-31')),
    total_price: Faker::Number.between(from: 500, to: 9999),
    number_of_guests: Faker::Number.between(from: 1, to: 3),
    status: ["Confirmed", "Pending", "Canceled"].sample,
    user: guests.sample,
    property: properties.sample
  )
  bookings << booking
end

#Reviews:
reviews = []
10.times do
  review = Review.create!(
    comment: Faker::Lorem.paragraph,
    rating: Faker::Number.between(from: 1, to: 5),
    booking: bookings.sample,
    user: guests.sample
  )
  reviews << review
end

#Favorites:
favorites = []
10.times do
  favorite = Favorite.create!(
    user: guests.sample,
    property: properties.sample
  )
  favorites << favorite
end
