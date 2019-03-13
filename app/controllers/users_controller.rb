class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_all = User.all
    @carsharing = Carsharing.all
  end
end
