FactoryBot.define do 
  factory :carsharing do
    places { 4 }
    description { 'Carsharing for go to golf' }
    price { 20 }
    golf_id { FactoryBot.create(:golf).id }
    driver_id { FactoryBot.create(:user).id }
    date { DateTime.now + 30000}
  end
end