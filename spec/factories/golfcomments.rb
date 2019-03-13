FactoryBot.define do
  factory :golfcomment do
    content { 'Good golf ! Good golf ! Good golf !' }
    grade { '4' }
    golf_id { FactoryBot.create(:golf) }
    user_id { FactoryBot.create(:user) }
  end
end