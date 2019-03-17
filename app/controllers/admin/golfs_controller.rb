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
      @golf = Golf.find(params[:id])

      golf_params = params.permit(:name, :lat, :long, :description, :price_range, :course_type, :par, :length, :website)
    

      if @golf.update(golf_params)
        flash[:success] = 'Le golf a été mis à jour!'
        redirect_to admin_golfs_path
      else
        
        redirect_to admin_golfs_path, alert: "Oops! There was a problem, please try again"
      end
    end
     
    
  
    def destroy
      @golf = Golf.find(params[:id])
      @golf.destroy
      redirect_to admin_golf_path
    end


  
 end