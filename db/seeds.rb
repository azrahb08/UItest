# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create! ([
  {"name": "Buckingham Palace", "latitude": "51.501564", "longitude": "-0.141944"}
  ])

Event.create([
  {"name":"Test","description":"location test", "address":"Buckingham Palace", "latitude":"51.501564","longitude":"-0.141944"}
  ])

  50.times do
      Guestlist.create(
      name: Faker::Name.name_with_middle,
      email: Faker::Internet.free_email,
      response: Faker::Coin.flip
    )
    #name = Faker::Coffee.blend_name
    #quantity = rand(0..100)
    #Guestlist.create(name: name, email: email, response: response)

  end
