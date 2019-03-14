class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_all = User.all
    @carsharing = Carsharing.all
    @passenger_array = []
    @passenger_id_array = []
  end
end
