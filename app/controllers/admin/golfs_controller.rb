class Admin::GolfsController < AdminController

    
    def index
      @golfs = Golf.all
    end
  
    def show
      @golf = Golf.find(params[:id])
      @golf.golf_image.attach(params[:golf_image])

    
    end

    def new

      @golf = Golf.new
    end

    def create

      @golf = Golf.new(name: params[:name],
                       lat: params[:lat],
                       long: params[:long],
                       description: params[:description],
                       price_range: params[:price_range],
                       course_type: params[:course_type],
                       par: params[:par],
                       length: params[:length],
                       website: params[:website],
                       golf_image: params[:golf_image]
                       )
      @golf.golf_image.attach(params[:golf_image])

      if @golf.save

        flash[:success] = 'Le golf a été crée!'
        redirect_to admin_golfs_path
      else

      redirect_to admin_golfs_path, alert: "Oops! There was a problem, please try again"

     end
    end
  
    def edit
      @golf = Golf.find(params[:id])
    end
  
    def update
      @golf = Golf.find(params[:id])

      @golf.golf_image.attach(params[:golf_image])


      golf_params = params.permit(:name, :lat, :long, :description, :price_range, :course_type, :par, :length, :website, :golf_image)
    

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
      redirect_to admin_golfs_path
    end


  
 end