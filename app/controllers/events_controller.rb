class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  skip_before_action :require_login, only: %i[index]

  # GET /events
  def index
    @q = Event.ransack(params[:q])
    @events = @q.result(distinct: true).includes(:user, :place).order(created_at: :desc).page(params[:page])
    # サークルが挟まればこうなるはず
    # @events = @q.result(distinct: true).includes(:cercle).order(created_at: :desc).page(params[:page])
  end

  # GET /events/1
  def show
    @joined_users = @event.joined_users
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit; end

  # POST /events
  def create
    @event = current_user.events.new(event_params)
    if @event.save
      redirect_to @event, success: t('defaults.message.created', item: Event.model_name.human)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      redirect_to @event, success: t('defaults.message.updated', item: Event.model_name.human)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    redirect_to events_url, success: t('defaults.message.deleted', item: Event.model_name.human)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :body, :events_image, :date, :member, :place_id)
  end
end
