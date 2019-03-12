FactoryBot.define do 
  factory :carsharing do
    places { 4 }
    description { 'Carsharing for go to golf' }
    price { 20 }
    golf_id { Golf.last.id }
    driver_id { User.last.id }
    date { DateTime.now + 30000}
  end
end