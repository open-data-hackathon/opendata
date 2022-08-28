require 'rails_helper'

RSpec.describe "admin/places/index", type: :view do
  before(:each) do
    assign(:admin_places, [
      Admin::Place.create!(
        place_name: "Place Name",
        address: "Address",
        latitude: 2.5,
        longitude: 3.5
      ),
      Admin::Place.create!(
        place_name: "Place Name",
        address: "Address",
        latitude: 2.5,
        longitude: 3.5
      )
    ])
  end

  it "renders a list of admin/places" do
    render
    assert_select "tr>td", text: "Place Name".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
  end
end
