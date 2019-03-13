FactoryBot.define do
  factory :golf do
    price_range { '2' }
    lat { '4' }
    long { '2' }
    description { 'A beautiful golf, A beautiful golf, A beautiful golf, A beautiful golf' }
    name { 'A beautiful golf' }
    course_type { '18 trous ' }
  end
end