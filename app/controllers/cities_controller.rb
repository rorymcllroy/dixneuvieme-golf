class CitiesController < ApplicationController
  def index
    @cities = City.order(:name).where("name ilike ?", "#{params[:term]}%")
    render json: @cities.map(&:name)
  end
  def new
    @city = City.new
  end
end