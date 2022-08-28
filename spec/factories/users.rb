FactoryBot.define do
  factory :user do
    first_name { "test" }
    last_name { "user" }
    sequence(:email) { |n| "test_#{n}@example.com" }
    password { "Itg43y0G" }
    password_confirmation { "Itg43y0G" }
  end
end
