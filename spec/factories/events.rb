FactoryBot.define do
  factory :event do
    title { "MyString" }
    body { "MyString" }
    events_image { "MyString" }
    date { "2022-08-27 16:19:20" }
    member { 1 }
    state { 1 }
    user { nil }
  end
end
