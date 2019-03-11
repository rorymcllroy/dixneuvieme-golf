class Admin::CarsharingsController < AdminController

    
    def index
      @carsharings = Carsharing.all
    end
  
    def show
      @carsharing = Carsharing.find(params[:id])
    
    end
  
    def edit
      @carsharing = Carsharing.find(params[:id])
    end
  
    def update
     
    end
  
    def destroy
      @carsharing = Carsharing.find(params[:id])
      @carsharing.destroy
      redirect_to admin_carsgarings_path
    end
  
 end