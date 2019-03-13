FactoryBot.define do 
  factory :carsharingreview do
    content { "Amazing !!" }
    grade { '4.5' }
    carsharing_id { Carsharing.last.id }
    passenger_id { Passenger.last.id }
  end
end