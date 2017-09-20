class LocationsController < ApplicationController
  before_action :get_location, only: [:show, :update, :destroy]
  
  def index
    @locations = Location.all
    json_response(@location)
  end
  
  def create
    @location = Location.create!(location_params)
    json_response(@location, :created)
  end
  
  def show
    json_response(@location)
  end
  
  def update
    @location.update(location_params)
    head :no_content
  end
  
  def destroy
    @location.destroy
    head :no_content
  end
  
  private
    def get_location
      @location = Location.find(params[:id])
    end
  
    def location_params
      params.permit(:nombre, :tipo, :lat, :lng, :created_by, :card_id)
    end
end
