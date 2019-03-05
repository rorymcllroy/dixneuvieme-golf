# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create 5 cities
5.times do
  City.create!(name: Faker::Address.city)
end

#Create 10 users
10.times do
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password:"testtest")
  city = City.all.sample
  user.city = city
  user.save!
end

#Create 10 golfs
10.times do
  Golf.create!(name: Faker::Job.title)
end

#Create 20 golf comments
20.times do
  comment = Golfcomment.new(content: Faker::Lorem.word)
  user = User.all.sample
  comment.user = user
  golf = Golf.all.sample
  comment.golf = golf
  comment.save!
end

#Create 3 carsharings
3.times do
  carsharing = Carsharing.new(description: Faker::Marketing.buzzwords, date: Faker::Date.between(Date.today, 1.month.from_now) , places: "4", price: "10")
  user = User.all.sample
  carsharing.driver = user
  golf = Golf.all.sample
  carsharing.golf = golf
  carsharing.save!
end

#Create 10 passengers
10.times do
  passenger = Passenger.new(stripe_customer_id: Faker::Number.number(10))
  carsharing = Carsharing.all.sample
  passenger.carsharing = carsharing
  user = User.all.sample
  passenger.passenger = user
  passenger.save!
end

#Create 5 carsharingreviews
5.times do
  review = Carsharingreview.new(content: Faker::Lorem.word)
  user = User.all.sample
  review.passenger = user
  carsharing = Carsharing.all.sample
  review.carsharing = carsharing
  review.save!
end

#Create 10 private messages 
10.times do 
  private_message = Privatemessage.new(content: Faker::Lorem.word)
  user = User.all.sample
  private_message.sender = user
  user = User.all.sample
  private_message.recipient = user
  private_message.save!
end
