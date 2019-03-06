class CarsharingsController < ApplicationController
  
  def index
    @carsharing = Carsharing.all
  end
  
  def show
    @carsharing = Carsharing.find(params[:carsharing_id])
  end
  
  def new
    @carsharing = Carsharing.new
  end
  
  def create
    puts "<><><><><><><><><><><><><>"
    puts params
    puts "<><><><><><><><><><><><><>"
    redirect_to carsharings_path
    #@carsharing = Carsharing.new(driver_id: 1, date: params[:start_date], available_places: params[:available_places], description: params[:description], price: params[:price], golf_id: params[:golf_id])
    
    #if @carsharing.save # save carsharing in the db
    #  redirect_to carsharings_path, :notice => "Nouveau covoiturage créé !"
    #else
    #  render 'new'
    #end
  end
  
  
  def edit
    @carsharing = Carsharing.find(params[:id])
  end
  
  def update
    ##
  end
  
  def destroy
    @carsharing = Carsharing.find(params[:id])
    @carsharing.destroy
    redirect_to carsharings_path
  end
end
