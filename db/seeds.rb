# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# man = Man.new(
#   name: "Bob",
#   height: 190,
#   weight: 80,
#   birthdate: Time.now,
#   description: "romantic hipster",
#   services: ["talk to parents", "cuddling"],
#   price: 120,
#   )

# man.save!
# man.photo_urls = [
#   "http://c8.alamy.com/comp/AY9AMH/man-on-harley-davidson-AY9AMH.jpg"
# ]
# --> Antoine's seeds

Man.create({name: "Bob", height: 200, weight: 45, summary: "50 Shades of God", url:"http://c8.alamy.com/comp/BHB8TA/adult-arab-arabian-arabian-peninsula-asia-dhofar-dishdash-dishdasha-BHB8TA.jpg" ,  birthdate: Time.now.to_datetime, description: "Love you long time" ,services: ["Dinner Date", "Park Walk"], price: 1000, city: "Shanghai"})
Man.create({name: "George", height: 100, weight: 70, summary: "Want some chicken?", url:"http://c8.alamy.com/comp/BHB8TA/adult-arab-arabian-arabian-peninsula-asia-dhofar-dishdash-dishdasha-BHB8TA.jpg" ,  birthdate: Time.now.to_datetime, summary: "Suck my toe!" description: "Love you long time" ,services: ["Meet the parents", "Cuddling"], price: 2000, city: "New York"})
Man.create({name: "Max", height: 250, weight: 90, summary: "Suck my toe!", url:"http://c8.alamy.com/comp/BHB8TA/adult-arab-arabian-arabian-peninsula-asia-dhofar-dishdash-dishdasha-BHB8TA.jpg" ,  birthdate: Time.now.to_datetime, description: "Love you long time" ,services: ["Cuddling", "Fake Wedding"], price: 3500, city: "Tokyo"})
Man.create({name: "Antoine", height: 170, weight: 140, summary: "NOOO", url:"http://c8.alamy.com/comp/BHB8TA/adult-arab-arabian-arabian-peninsula-asia-dhofar-dishdash-dishdasha-BHB8TA.jpg" ,  birthdate: Time.now.to_datetime, description: "Love you long time" ,services: ["Cuddling", "Meet the friends"], price: 2500, city: "London"})

