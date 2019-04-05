class CarsharingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  def index
    @carsharing = Carsharing.all
  end
  
  def show
    @carsharing = Carsharing.find(params[:id])
  end
  
  def new
    @carsharing = Carsharing.new
  end
  
  def create  
    
    city_id = City.find_or_create_by(name: params[:city_name]).id

    @carsharing = Carsharing.new(driver_id: current_user.id, date: params[:start_date], places: params[:place], description: params[:description], price: params[:price], golf_id: params[:golf_id], city_id: city_id)
    if @carsharing.save! # save carsharing in the db
      redirect_to carsharings_path
      flash[:notice] = "Covoiturage en attente de validation."
    else
      redirect_to new_carsharing_path
      flash[:error] = "Erreur dans la saisie du covoiturage."
    end
  end
  
  
  def edit
    @carsharing = Carsharing.find(params[:id])
  end
  
  def update
    @carsharing = carsharing_by_id(params[:id])
    if @carsharing.update(driver_id: params[:id], date: params[:start_date], places: params[:place], description: params[:description], price: params[:price], golf_id: params[:golf_id], validated: params[:validated])
      redirect_to carsharings_path(params[:id])
    else
      redirect_to carsharings_path
    end
  end
  
  def destroy
    @carsharing = Carsharing.find(params[:id])
    @carsharing.destroy
    redirect_to carsharings_path
  end
end
