class GolfsController < ApplicationController
  before_action :is_admin?, only: [:new, :destroy, :edit]
  
  def index
    @golfs = Golf.all
  end
  
  def show
    @golf= Golf.find(params[:id])
    @comments= Golfcomment.all
  end
  
  def new
    @golf = Golf.new
  end
  
  def create
    @golf = Golf.new(name: params[:name], description: params[:description], price_range: params[:price_range], lat: params[:lat], long: params[:long] )
    
    if @golf.save # try to save  golf in the db
      redirect_to root_path, :notice => "Nouveau Golf créé !"
    else
      render 'new'
    end
  end
  
  
  def edit
    @golf = Golf.find(params[:id])
  end
  
  def update
    ##
  end
  
  def destroy
    @golf = Golf.find(params[:id])
    @Golf.destroy
    redirect_to Golf_path
  end
  
  def is_admin?
    if !(user_signed_in? && current_user.is_admin == true)
      redirect_to root_path, notice: "Accès non autorisé"
    end
  end
end
<<<<<<< HEAD
=======


def edit
   @golf = Golf.find(params[:id])
end

def update
##
end

def destroy
  @golf = Golf.find(params[:id])
  @golf.destroy
  redirect_to Golf_path
end

end
>>>>>>> new-development
