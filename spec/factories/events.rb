FactoryBot.define do
  factory :event do
    title { "MyString" }
    body { "MyString" }
    events_image { "MyString" }
    date { "2022-08-27 17:50:25" }
    member { 1 }
    state { 1 }
    user { nil }
  end
end
