FactoryBot.define do
  factory :privatemessage do
    content { 'Hello my name is Admin' }
    recipient_id { FactoryBot.create(:user).id }
    sender_id { FactoryBot.create(:user).id }
  end
end