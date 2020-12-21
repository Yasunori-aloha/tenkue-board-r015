FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.characters(number: rand(1..140)) }

    association :user
    association :post
  end
end
