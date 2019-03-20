class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_all = User.all
    @carsharing = Carsharing.all
    @passenger_array = []
    @passenger_id_array = []
  end
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Profil supprimé"
    redirect_to root_path
  end
end
