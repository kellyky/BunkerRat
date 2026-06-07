# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
# db/seeds.rb
Band.destroy_all
Show.destroy_all

[
  "Fundamentals",
  "Jan & The Whatevers",
  "The Midnight Echoes",
  "Static Bloom",
  "Neon Satellites"
].each do |name|
  Band.find_or_create_by!(name:)
end

[
  {
    venue: "Cactus Club",
    city: "Milwaukee",
    date: Date.new(2026, 8, 14),
    time: "Doors open at 7"
  },
  {
    venue: "X-Ray Arcade",
    city: "Cudahy",
    date: Date.new(2026, 9, 5),
    time: "8 PM"
  },
  {
    venue: "High Noon Saloon",
    city: "Madison",
    date: Date.new(2026, 10, 17),
    time: "Doors 6:30 PM"
  },
  {
    venue: "The Bend Theater",
    city: "West Bend",
    date: Date.new(2026, 11, 7),
    time: "7:30 PM"
  }
].each do |attributes|
  Show.find_or_create_by!(
    venue: attributes[:venue],
    date: attributes[:date]
  ) do |show|
    show.city = attributes[:city]
    show.time = attributes[:time]
  end
end

puts "Seeded #{Band.count} bands"
puts "Seeded #{Show.count} shows"
