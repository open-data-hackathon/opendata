class User::JoinedEventsController < ApplicationController
  def index
    @joined_events = current_user.joined_events.order(created_at: :desc).page(params[:page])
  end
end
