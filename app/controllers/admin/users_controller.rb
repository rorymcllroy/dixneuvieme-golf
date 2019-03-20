class Admin::UsersController < AdminController

    
    def index
      @users = User.all
    end
  
    def show
      @user = User.find(params[:id])
      
    
    end

    def new

    end

    def create

    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])

      user_params = params.permit(:is_admin)
    
      if @user.update(user_params)
        flash[:success] = 'Le profil utilisateur a été mis à jour!'
        redirect_to admin_users_path

      else
        
        redirect_to admin_users_path, alert: "Un problème est survenu"
      end
      
    end
     
    
  
    def destroy
      
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admin_users_path
    end


  
 end