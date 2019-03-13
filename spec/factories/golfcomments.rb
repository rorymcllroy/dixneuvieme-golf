FactoryBot.define do
  factory :golfcomment do
    content { 'Good golf ! Good golf ! Good golf !' }
    grade { '4' }
    golf_id { FactoryBot.create(:golf).id }
    user_id { FactoryBot.create(:user).id }
  end
end