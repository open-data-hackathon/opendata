# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Place.destroy_all
Event.destroy_all

User.create(
  name: 'test_user',
  email: 'test@example.com'
)
user = User.first

place = Place.create(
  place_name: '地域活動センター',
  address: 'どこかの地域',
  latitude: 123.456,
  longitude: 123.456
)

user.events.create(
  title: "フットサル大会",
  body: "フットサルをみんなでしましょう！！",
  place_id: place.id
)

