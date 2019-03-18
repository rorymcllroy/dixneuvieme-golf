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
    end
  
    def update
      
    end
     
    
  
    def destroy
      
      @users = User.find(params[:id])
      @user.destroy
      redirect_to admin_users_path
    end


  
 end