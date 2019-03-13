FactoryBot.define do
  factory :user do
    first_name { 'john' }
    last_name { 'Doe'}
    email { Faker::Internet.unique.email }
    description { 'Hi, i love golf, because golf is cool and i play golf a lot' }
    city_id { FactoryBot.create(:city).id }
    password { 'MOTDEPASSEVIDE??' }
    golf_level { 'debutant' }
  end
end