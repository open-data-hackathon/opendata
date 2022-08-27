require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        title: "Title",
        body: "Body",
        events_image: "Events Image",
        member: 2,
        state: 3,
        user: nil
      ),
      Event.create!(
        title: "Title",
        body: "Body",
        events_image: "Events Image",
        member: 2,
        state: 3,
        user: nil
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Body".to_s, count: 2
    assert_select "tr>td", text: "Events Image".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
