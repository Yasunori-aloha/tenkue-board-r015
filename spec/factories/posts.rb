FactoryBot.define do
  factory :post do
    content { Faker::Lorem.characters(number: rand(1..140)) }

    association :user
  end
end
