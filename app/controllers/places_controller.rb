class PlacesController < ApplicationController
  before_action :set_place, only: %i[show edit update destroy]

  # GET /places
  def index
    @places = Place.all
  end

  # GET /places/1
  def show; end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit; end

  # POST /places
  def create
    @place = Place.new(place_params)

    if @place.save
      redirect_to @place
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /places/1
  def update
    if @place.update(place_params)
      redirect_to @place
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /places/1
  def destroy
    @place.destroy
    redirect_to places_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_place
    @place = Place.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def place_params
    params.require(:place).permit(:place_name, :address, :latitude, :longitude)
  end
end
