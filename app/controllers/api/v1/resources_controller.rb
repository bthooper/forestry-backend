class Api::V1::ResourcesController < ApplicationController

  before_action :set_location

  def index
    @resources = @location.resources
    render json: @resources
  end

  def show
    @resource = @location.resources.find_by(id: params[:id])
    render json: @resource
  end

  def create
    @resource = @location.build(resource_params)
    if @resource.save
      render json: @resource
    else
      render json: {message: "Error: resource not created"}
    end
  end

  def destroy
    @resource = @location.resources.find_by(id: params[:id])
    @resource.desstroy
  end

  private

  def set_location
    @location = Location.find(params[:location_id])
  end

  def resource_params
    params.require(:resource).permit(:category, :status, :descrption, :icon_url, :location_id)
  end
end
