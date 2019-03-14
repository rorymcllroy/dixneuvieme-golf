# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create cities
#City.create!(name: "Paris Ier");
#City.create!(name: "Paris IIème");
#City.create!(name: "Paris IIIème");
#City.create!(name: "Paris IVème");
#City.create!(name: "Paris Vème");
#City.create!(name: "Paris VIème");
#City.create!(name: "Paris VIIème");
#City.create!(name: "Paris VIIIème");
#City.create!(name: "Paris IXème");
#City.create!(name: "Paris Xème");
#City.create!(name: "Paris XIème");
#City.create!(name: "Paris XIIème");
#City.create!(name: "Paris XIIIème");
#City.create!(name: "Paris XIVème");
#City.create!(name: "Paris XVème");
#City.create!(name: "Paris XVIème");
#City.create!(name: "Paris XVIIème");
#City.create!(name: "Paris XVIIIème");
#City.create!(name: "Paris XIXème");
#City.create!(name: "Paris XXème");


#Create golfs
Golf.create!(name: "Golf de Gonesse", lat: "48.9863555", long: "2.4500537", price_range: "1", course_type: "9 trous", description: "Description à compléter ultérieurement.", par:"Par 36", length:"3033 mètres", website:"https://www.golfdegonesse.fr/");
Golf.create!(name: "Golf de Rosny-sous-Bois", lat: "48.8732", long: "2.485369999999989", price_range: "1", course_type: "9 trous", description: "Description à compléter ultérieurement.", par:"Par 33", length:"2011 mètres", website:"https://jouer.golf/rosny-sous-bois-daily/");
Golf.create!(name: "Golf de Paris", lat: "48.8464", long: "2.21530000000007", price_range: "1", course_type: "9 trous", description: "Description à compléter ultérieurement.", par:"Par 35", length:"2700 mètres", website:"https://www.pariscountryclub.com/sports-et-loisirs/golf/");
Golf.create!(name: "Golf de Bussy-Guermantes", lat: "48.8416", long: "2.6978900000000294", price_range: "2", course_type: "18 trous", description: "Description à compléter ultérieurement.", par:"Par 72", length:"6 111 mètres", website:"https://www.golfbussyguermantes.com/");
Golf.create!(name: "Golf de Rueil-Malmaison", lat: "48.8778", long: "2.1883699999999635", price_range: "1", course_type: "9 trous compact", description: "Description à compléter ultérieurement.", par:"Par 32", length:"1926 mètres", website:"https://rueil-malmaison.bluegreen.com/fr");
Golf.create!(name: "Golf de Saint-Ouen-l'Aumône", lat: "49.0441", long: "2.110369999999989", price_range: "1", course_type: "9 trous compact", description: "Description à compléter ultérieurement.", par:"Par 27", length:"675 mètres", website:"https://jouer.golf/saint-ouen-laumone-daily/");
Golf.create!(name: "Golf du Château de la Chouette", lat: "49.0259", long: "1.8929200000000037", price_range: "2", course_type: "18 trous", description: "Description à compléter ultérieurement.", par:"Par 72", length:"5671 mètres", website:"http://www.golfdelachouette.com/");
Golf.create!(name: "Golf du Château de Cely", lat: "48.4590138", long: "2.5326635", price_range: "3", course_type: "18 trous", description: "Description à compléter ultérieurement.", par:"Par 72", length:"5431 mètres", website:"https://jouer.golf/cely/");
Golf.create!(name: "Golf de la Vaucouleurs - Parcours Rivière", lat: "48.8668237", long: "1.6169513", price_range: "2", course_type: "18 trous", description: "Description à compléter ultérieurement.", par:"Par 73", length:"5608 mètres", website:"https://www.vaucouleurs.fr/");
Golf.create!(name: "Golf National - Parcours Aigle", lat: "48.7709414", long: "2.0706084", price_range: "2", course_type: "18 trous", description: "Description à compléter ultérieurement.", par:"Par 71", length:"5728 mètres", website:"https://www.golf-national.com/l-aigle/");

#Create 20 golf comments
#20.times do
#  comment = Golfcomment.new(content: Faker::Lorem.word)
#  user = User.all.sample
#  comment.user = user
#  golf = Golf.all.sample
#  comment.golf = golf
#  comment.save!
#end

#Create 3 carsharings
#3.times do
#  carsharing = Carsharing.new(description: Faker::Marketing.buzzwords, date: Faker::Date.between(Date.today, 1.month.from_now) , places: "4", price: "10")
#  user = User.all.sample
#  carsharing.driver = user
#  golf = Golf.all.sample
#  carsharing.golf = golf
#  carsharing.save!
#end

#Create 10 passengers
#10.times do
#  passenger = Passenger.new(stripe_customer_id: Faker::Number.number(10))
#  carsharing = Carsharing.all.sample
#  passenger.carsharing = carsharing
#  user = User.all.sample
#  passenger.passenger = user
#  passenger.save!
#end

#Create 5 carsharingreviews
#5.times do
#  review = Carsharingreview.new(content: Faker::Lorem.word)
#  user = User.all.sample
#  review.passenger = user
#  carsharing = Carsharing.all.sample
#  review.carsharing = carsharing
#  review.save!
#end

#Create 10 private messages 
#10.times do 
#  private_message = Privatemessage.new(content: Faker::Lorem.word)
#  user = User.all.sample
#  private_message.sender = user
#  user = User.all.sample
#  private_message.recipient = user
#  private_message.save!
#end
