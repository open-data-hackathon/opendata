class User::JoinedEventsController < ApplicationController
  def index
    @events = current_user.joined_events.order(created_at: :desc).page(params[:page])
  end
end
