class CitiesController < ApplicationController
  
  def index
    @cities = City.all
  end
  
  def show
    
  end
  
  def new
    @city = City.new
  end
  
  def create
    
  end
  
  def update
    
  end
  
  def edit
    
  end
  
  def destroy
    
  end
end