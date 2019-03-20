class CarsharingreviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def new
    @carsharing = Carsharing.find(params[:carsharing_id])
  end
  
  def create
    @csr = Carsharingreview.new(content: params[:content], grade: params[:grade], carsharing_id: params[:carsharing_id], passenger_id: current_user.id)
    if @csr.save
      redirect_to root_path
    else
      redirect_to new_carsharing_carsharing_review_path(params[:carsharing_id])
    end
  end

end
