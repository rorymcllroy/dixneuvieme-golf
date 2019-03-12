FactoryBot.define do
  factory :user do
    first_name { 'john' }
    last_name { 'Doe'}
    email { 'johndoe@gmail.com' }
    encrypted_password { 'MOTDEPASSEVIDE??' }
    description { 'Hi, i love golf, because golf is cool and i play golf a lot' }
    city_id { City.last.id }
    golf_level { 'debutant' }
  end
end