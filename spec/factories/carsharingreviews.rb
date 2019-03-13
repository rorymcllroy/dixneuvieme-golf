FactoryBot.define do 
  factory :carsharingreview do
    content { "Amazing !! Amazing !! Amazing !!" }
    grade { '4.5' }
    carsharing_id { FactoryBot.create(:carsharing).id }
    passenger_id { FactoryBot.create(:user).id }
  end
end