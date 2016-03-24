FactoryGirl.define do

  factory :list do
    sequence(:description)  { |n| "#{Faker::Lorem.words(10).join(' ')} #{n}" }
  end

end
