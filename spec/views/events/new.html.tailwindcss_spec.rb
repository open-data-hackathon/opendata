require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      title: "MyString",
      body: "MyString",
      events_image: "MyString",
      member: 1,
      state: 1,
      user: nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[title]"

      assert_select "input[name=?]", "event[body]"

      assert_select "input[name=?]", "event[events_image]"

      assert_select "input[name=?]", "event[member]"

      assert_select "input[name=?]", "event[state]"

      assert_select "input[name=?]", "event[user_id]"
    end
  end
end
