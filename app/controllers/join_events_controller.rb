class JoinEventsController < ApplicationController
  def create
    @join_event = current_user.join_events.create(event_id: params[:event_id])
    @join_event.save
    redirect_to event_path(params[:event_id]), success: "イベントに参加しました"
    #current_user.join_events.create!(event_id: params[:id])
    #redirect_to root_path, success: t('defaults.message.created', item: JoinEvent.model_name.human)
  end

  def destroy
    @join_event = JoinEvent.find_by(user_id: current_user.id, event_id: params[:event_id])
    @join_event.destroy!
    redirect_to event_path(params[:event_id]), success: "イベントの参加を取り消しました"
    #redirect_to root_path, success: t('defaults.message.deleted', item: JoinEvent.model_name.human)
  end
end
