class JoinEventsController < ApplicationController
  def create
    current_user.join_events.create!(event_id: params[:id])
    redirect_to root_path
  end

  def destroy
    @event = JoinEvent.find_by(user_id: current_user.id, event_id: params[:id])
    @event.destroy!
    redirect_to root_path
  end
end
