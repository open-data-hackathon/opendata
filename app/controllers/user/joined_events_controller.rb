class User::JoinedEventsController < ApplicationController
  def index
    @joined_events = current_user.joined_events
  end
end
