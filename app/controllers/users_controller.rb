class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @carsharing = Carsharing.all
  end
end
