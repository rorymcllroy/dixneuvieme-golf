class Admin::CarsharingsController < AdminController

    
    def index
      @carsharings = Carsharing.all
    end
  
    def show
      @carsharing = Carsharing.find(params[:id])
    
    end

    def create
    end
  
    def edit
      @carsharing = Carsharing.find(params[:id])
    end
  
    def update
        if params[:validation] == "true"
          puts "ok"
          Carsharing.find(params[:id]).update(validated: true)
        else
          puts "nok"
          Carsharing.find(params[:id]).update(validated: false)
        end
        redirect_to admin_carsharings_path
    end
     
    
  
    def destroy
      @carsharing = Carsharing.find(params[:id])
      @carsharing.destroy
      redirect_to admin_carsgarings_path
    end
  
 end