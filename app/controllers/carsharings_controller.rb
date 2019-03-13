class CarsharingsController < ApplicationController
  
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
    @carsharing = Carsharing.new(driver_id: current_user.id, date: params[:start_date], places: params[:place], description: params[:description], price: params[:price], golf_id: params[:golf_id], validated: params[:validated])
    if @carsharing.save! # save carsharing in the db
     redirect_to carsharings_path, :notice => "Nouveau covoiturage créé !"
    else
     render 'new'
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
