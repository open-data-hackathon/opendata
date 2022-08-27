FactoryBot.define do
  factory :admin_place, class: 'Admin::Place' do
    place_name { "MyString" }
    address { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
  end
end
