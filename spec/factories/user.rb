FactoryGirl.define do
  factory :user do
    id  { |n| "#{Faker::Number.number(5)}#{n}" }
    email Faker::Internet.email
    password Faker::Internet.password
  end
end
