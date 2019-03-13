FactoryBot.define do
  factory :passenger do
    stripe_customer_id { Faker::Crypto.md5 }
    passenger_id { FactoryBot.create(:user).id }
    carsharing_id { FactoryBot.create(:carsharing).id }
  end
end