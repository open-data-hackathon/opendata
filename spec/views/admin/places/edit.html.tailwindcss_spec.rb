require 'rails_helper'

RSpec.describe "admin/places/edit", type: :view do
  before(:each) do
    @admin_place = assign(:admin_place, Admin::Place.create!(
      place_name: "MyString",
      address: "MyString",
      latitude: 1.5,
      longitude: 1.5
    ))
  end

  it "renders the edit admin_place form" do
    render

    assert_select "form[action=?][method=?]", admin_place_path(@admin_place), "post" do

      assert_select "input[name=?]", "admin_place[place_name]"

      assert_select "input[name=?]", "admin_place[address]"

      assert_select "input[name=?]", "admin_place[latitude]"

      assert_select "input[name=?]", "admin_place[longitude]"
    end
  end
end
