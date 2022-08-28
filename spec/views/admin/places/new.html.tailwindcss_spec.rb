require 'rails_helper'

RSpec.describe "admin/places/new", type: :view do
  before(:each) do
    assign(:admin_place, Admin::Place.new(
      place_name: "MyString",
      address: "MyString",
      latitude: 1.5,
      longitude: 1.5
    ))
  end

  it "renders new admin_place form" do
    render

    assert_select "form[action=?][method=?]", admin_places_path, "post" do

      assert_select "input[name=?]", "admin_place[place_name]"

      assert_select "input[name=?]", "admin_place[address]"

      assert_select "input[name=?]", "admin_place[latitude]"

      assert_select "input[name=?]", "admin_place[longitude]"
    end
  end
end
