class  Admin:AdminController < AdminController
    before_action :authenticate_user!
    before_action :check_if_admin

def index

    @carsharings = Carsharing.all
    @golfs = Golf.all
    end

    private

    def authenticate_user
        unless current_user
            flash[:danger] = "Connecte-toi ;)"
            redirect_to user_session_path
    end

    def check_if_admin
        unless current_user.is_admin == true
            redirect_to root_path
            flash[:dansger] = "Vous n'êtes pas administrateur !"
    end


end
