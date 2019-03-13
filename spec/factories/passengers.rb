FactoryBot.define do
  factory :passenger do
    stripe_customer_id { '1345678098765432' }
    passenger_id { FactoryBot.create(:user).id }
    carsharing_id { FactoryBot.create(:carsharing).id }
  end
end