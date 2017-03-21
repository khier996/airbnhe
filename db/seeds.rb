# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

man = Man.new(
  name: "Bob",
  height: 190,
  weight: 80,
  birthdate: Time.now,
  description: "romantic hipster",
  services: ["talk to parents", "cuddling"],
  price: 120,
  )

man.save!
man.photo_urls = [
  "http://c8.alamy.com/comp/AY9AMH/man-on-harley-davidson-AY9AMH.jpg"
]
