class Admin::GolfsController < AdminController

    
    def index
      @golfs = Golf.all
    end
  
    def show
      @golf = Golf.find(params[:id])
    
    end

    def create
    end
  
    def edit
      @golf = Golf.find(params[:id])
    end
  
    def update
        if params[:validation] == "true"
          puts "ok"
          Golf.find(params[:id]).update(validated: true)
        else
          puts "nok"
          Golf.find(params[:id]).update(validated: false)
        end
        redirect_to admin_carsharings_path
    end
     
    
  
    def destroy
      @golf = Golf.find(params[:id])
      @golf.destroy
      redirect_to admin_golf_path
    end
  
 end