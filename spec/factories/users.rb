FactoryBot.define do
  factory :user do
    name                  { Faker::Games::Pokemon.name }
    email                 { Faker::Internet.email }
    password              { Faker::Internet.password }
    password_confirmation { password }
  end
end
