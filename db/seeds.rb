# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts 'Cleaning database...'
# Booking.destroy_all
# Favorite.destroy_all
# Property.destroy_all
# # Booking.where(property: Property.last).destroy_all
# User.destroy_all

# puts 'create users, properties, bookings...'

# tom = User.create(email: 'tom@gmail.com', password: 'secret')
# alice = User.create(email: 'alice@gmail.com', password: 'secret')
# mark = User.create(email: 'mark@gmail.com', password: 'secret')

# Property.create(
#   title: " flat near Il Colosseo",
#   capacity: rand(1..5),
#   address: "Rome",
#   summary: "Vista stupenda sul Colosseo. Da non perdere!",
#   price_per_night: 120,
#   number_of_rooms: rand(1..4),
#   user_id: alice
# )

# Property.create(
#   title: "Room near Tower Bridge",
#   capacity: 2,
#   address: "London",
#   summary: "",
#   price_per_night: 250,
#   number_of_rooms: rand(1..4),
#   user: alice
# )

# Property.create(
#   title: "Flat near Dam Square",
#   capacity: 2,
#   address: "Amsterdam",
#   summary: "By walking distance to all main monuments.",
#   price_per_night: 300,
#   number_of_rooms: rand(1..4),
#   user: mark
# )

# Property.create(
#   title: "Appartment in Brooklyn",
#   capacity: 2,
#   address: "New York",
#   summary: "good room!",
#   price_per_night: 300,
#   number_of_rooms: rand(1..4),
#   user: tom
# )

# Property.create(
#   title: "Room in De Pijp",
#   capacity: 2,
#   address: "Amsterdam",
#   summary: "Room in clean and nice area of Amsterdam in the city center",
#   price_per_night: 300,
#   number_of_rooms: rand(1..4),
#   user: mark
# )

# Property.create(
#   title: "Room in Amsterdam Centraal",
#   capacity: 2,
#   address: "Amsterdam",
#   summary: "Fantastic room in next to the main train station and the center in the city ",
#   price_per_night: 300,
#   number_of_rooms: rand(1..4),
#   user: tom
# )

# Property.create(
#   title: " Appartment near Lungo Tevere",
#   capacity: rand(1..5),
#   address: "Rome",
#   summary: "Vista stupenda sul fiume. Da non perdere!",
#   price_per_night: 120,
#   number_of_rooms: rand(1..4),
#   user: alice
# )

# Property.create(
#   title: "Room near Tower Bridge",
#   capacity: 2,
#   address: "London",
#   summary: "",
#   price_per_night: 250,
#   number_of_rooms: rand(1..4),
#   user: alice
# )

# Property.create(
#   title: "Flat near Dam Square",
#   capacity: 2,
#   address: "Amsterdam",
#   summary: "By walking distance to all main monuments.",
#   price_per_night: 300,
#   number_of_rooms: rand(1..4),
#   user: mark
# )

# Booking.create!(
#   start_date: Date.today - 20,
#   end_date: Date.today - 10,
#   number_of_guests: rand(1..5),
#   user: alice,
#   property: Property.last,
#   status: "confirmed"
# )

# puts 'users, properties, bookings...CREATED'


##################################################################################

require 'faker'

puts 'Cleaning database...'
Favorite.destroy_all
Review.destroy_all
Booking.destroy_all
Property.destroy_all
User.destroy_all

#Users:
puts 'Creating Users....'
firstnames = ["ahmed", "jasmeet", "yuta", "onur"]

ahmed = User.create!(
  email: "#{firstnames[0]}@gmail.com",
  password: 'secret'
  )

jasmeet = User.create!(
  email: "#{firstnames[1]}@gmail.com",
  password: 'secret'
  )

yuta = User.create!(
  email: "#{firstnames[2]}@gmail.com",
  password: 'secret'
  )

onur = User.create!(
  email: "#{firstnames[3]}@gmail.com",
  password: 'secret'
  )


  titles = [
    "Luxury Beachfront Villa",
    "Cozy Downtown Loft",
    "Spacious Family Retreat",
    "Charming Countryside Cottage",
    "Modern City Apartment",
    "Secluded Mountain Cabin",
    "Elegant Historic Mansion",
    "Stylish Urban Studio",
    "Rustic Farmhouse Getaway",
    "Serenity by the Lake",
    "Tropical Paradise Bungalow",
    "Quaint Coastal Cottage",
    "Contemporary Penthouse Suite",
    "Tranquil Forest Hideaway",
    "Chic Riverside Retreat",
    "Cosy Ski Chalet",
    "Unique Treehouse Experience",
    "Beachside Condo with Ocean Views",
    "Authentic Vintage Caravan",
    "Luxurious Lakeside Lodge"
  ]

  property_summaries = [
    "Experience luxury at its finest in this stunning beachfront villa with breathtaking ocean views.",
    "Escape to tranquility in this charming countryside cottage surrounded by lush greenery and scenic landscapes.",
    "Indulge in modern elegance and city living in this stylish loft apartment located in the heart of downtown.",
    "Immerse yourself in history and charm in this beautifully restored colonial villa with a private garden.",
    "Discover ultimate relaxation in this secluded mountain retreat with a private hot tub and panoramic views.",
    "Stay in this spacious and modern penthouse with a rooftop terrace offering stunning city skyline vistas.",
    "Find your own private paradise in this tropical beachfront bungalow with direct access to pristine white sands.",
    "Unwind in this luxurious countryside estate boasting a private pool, spa, and expansive landscaped gardens.",
    "Step back in time and experience traditional culture in this authentic heritage home with antique furnishings.",
    "Enjoy a peaceful getaway in this cozy cabin nestled in the woods, perfect for nature lovers and hikers."
  ]

  cities = [
    "Tokyo",
    "Paris",
    "New York",
    "London",
    "Sydney",
    "Dubai",
    "San Francisco",
    "Cape Town",
    "Rio de Janeiro",
    "Amsterdam"
  ]

  #properties:
  puts 'Creating Properties...'

  20.times do
    Property.create!(
      capacity: rand(1..10),
      address: cities.sample.capitalize,
      summary: property_summaries.sample,
      price_per_night: rand(50..500),
      user_id: User.pluck(:id).sample,
      single_room: [true, false].sample,
      title: titles.sample
    )


    #BOOKING:
    puts 'Creating Bookings....'

    property_ids = Property.pluck(:id)
    user_ids = User.pluck(:id)
    Booking.create!(
      start_date: Date.today + 1,
      end_date: Date.today + 5,
      total_price: 750.0,
      number_of_guests: 4,
      user_id: user_ids.sample,
      property_id: property_ids.sample,
      status: "Confirmed"
    )
    Booking.create!(
      start_date: Date.today + 3,
      end_date: Date.today + 8,
      total_price: 1200.0,
      number_of_guests: 2,
      user_id: user_ids.sample,
      property_id: property_ids.sample,
      status: "Pending"
    )
    Booking.create!(
      start_date: Date.today + 2,
      end_date: Date.today + 4,
      total_price: 500.0,
      number_of_guests: 3,
      user_id: user_ids.sample,
      property_id: property_ids.sample,
      status: "Confirmed"
    )
    Booking.create!(
      start_date: Date.today + 7,
      end_date: Date.today + 10,
      total_price: 900.0,
      number_of_guests: 6,
      user_id: user_ids.sample,
      property_id: property_ids.sample,
      status: "Pending"
    )
    Booking.create!(
      start_date: Date.today + 5,
      end_date: Date.today + 7,
      total_price: 350.0,
      number_of_guests: 2,
      user_id: user_ids.sample,
      property_id: property_ids.sample,
      status: "Confirmed"
    )
    Booking.create!(
      start_date: Date.today + 2,
      end_date: Date.today + 4,
      total_price: 400.0,
      number_of_guests: 3,
      user_id: user_ids.sample,
      property_id: property_ids.sample,
      status: "Pending"
    )
    Booking.create!(
      start_date: Date.today + 4,
      end_date: Date.today + 6,
      total_price: 600.0,
      number_of_guests: 4,
      user_id: user_ids.sample,
      property_id: property_ids.sample,
      status: "Confirmed"
    )


#Review:
puts 'Creating Reviews....'

  booking_ids = Booking.pluck(:id)
  user_ids = User.pluck(:id)
  Review.create!(
    comment: "Great property and excellent host!",
    rating: 5,
    booking_id: booking_ids.sample,
    user_id: user_ids.sample
  )
  Review.create!(
    comment: "Cozy and comfortable place to stay.",
    rating: 4,
    booking_id: booking_ids.sample,
    user_id: user_ids.sample
  )
  Review.create!(
    comment: "The property was not as described. Disappointed.",
    rating: 2,
    booking_id: booking_ids.sample,
    user_id: user_ids.sample
  )
  Review.create!(
    comment: "Highly recommended! Will definitely come back.",
    rating: 5,
    booking_id: booking_ids.sample,
    user_id: user_ids.sample
  )
  Review.create!(
    comment: "Average experience. Nothing exceptional.",
    rating: 3,
    booking_id: booking_ids.sample,
    user_id: user_ids.sample
  )
  Review.create!(
    comment: "The host was very accommodating and friendly.",
    rating: 4,
    booking_id: booking_ids.sample,
    user_id: user_ids.sample
  )
  Review.create!(
    comment: "Not suitable for families with kids.",
    rating: 2,
    booking_id: booking_ids.sample,
    user_id: user_ids.sample
  )

  puts 'users, properties, bookings...CREATED'
end
