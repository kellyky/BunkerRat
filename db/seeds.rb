# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
# db/seeds.rb

Show.find_or_create_by!(
  venue: "Cactus Club",
  starts_at: Time.zone.parse("2026-08-14 20:00"),
)

Show.find_or_create_by!(
  venue: "X-Ray Arcade",
  starts_at: Time.zone.parse("2026-08-22 19:00"),
)

Show.find_or_create_by!(
  venue: "High Noon Saloon",
  starts_at: Time.zone.parse("2026-09-05 20:30"),
)

Show.find_or_create_by!(
  venue: "The Back Bar",
  starts_at: Time.zone.parse("2026-09-18 19:30"),
)

Show.find_or_create_by!(
  venue: "Mile of Music",
  starts_at: Time.zone.parse("2026-08-01 14:00"),
)#   end
Band.destroy_all

[
  "Fundamentals",
  "Jan & The Whatevers",
  "The Midnight Echoes",
  "Static Bloom",
  "Neon Satellites"
].each do |name|
  Band.find_or_create_by!(name:)
end

puts "Seeded #{Band.count} bands"
