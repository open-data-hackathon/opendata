FactoryBot.define do
  factory :event do
    title { "test_title" }
    body { "test_body" }
    events_image { nil }
    date { "2022-08-27 17:50:25" }
    member { 1 }
    state { 1 }
    user_id { FactoryBot.create(:user).id }
    place_id { FactoryBot.create(:place).id }
  end
end
