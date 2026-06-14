# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
# db/seeds.rb
#
Lineup.destroy_all
Band.destroy_all
Show.destroy_all

fundamentals = Band.create!(name: "Fundamentals")
jan = Band.create!(name: "Jan & The Whatevers")
midnight = Band.create!(name: "The Midnight Echoes")
static_bloom = Band.create!(name: "Static Bloom")

# Past shows
cactus_club = Show.create!(
  venue: "Cactus Club",
  city: "Milwaukee",
  date: 2.months.ago.to_date,
  time: "Doors 7 PM"
)

xray_arcade = Show.create!(
  venue: "X-Ray Arcade",
  city: "Cudahy",
  date: 1.month.ago.to_date,
  time: "8 PM"
)

# Upcoming shows
high_noon = Show.create!(
  venue: "High Noon Saloon",
  city: "Madison",
  date: 1.month.from_now.to_date,
  time: "Doors 6:30 PM"
)

bend_theater = Show.create!(
  venue: "The Bend Theater",
  city: "West Bend",
  date: 2.months.from_now.to_date,
  time: "7:30 PM"
)

cactus_club.bands << fundamentals
cactus_club.bands << jan

xray_arcade.bands << fundamentals

high_noon.bands << midnight
high_noon.bands << static_bloom

bend_theater.bands << fundamentals
bend_theater.bands << midnight

puts "Seeded #{Band.count} bands"
puts "Seeded #{Show.count} shows"
puts "Seeded #{Lineup.count} lineups"
