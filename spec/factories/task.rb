FactoryGirl.define do
  factory :task do
    list { FactoryGirl.create(:list)}
    sequence(:description)  { |n| "#{Faker::Lorem.words(10).join(' ')} #{n}" }
  end
end
