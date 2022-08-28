require 'rails_helper'

RSpec.describe "admin/places/show", type: :view do
  before(:each) do
    @admin_place = assign(:admin_place, Admin::Place.create!(
      place_name: "Place Name",
      address: "Address",
      latitude: 2.5,
      longitude: 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Place Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
