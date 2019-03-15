class CarsharingReviewsController < ApplicationController
  def new
  end

  def create
    @csr = CarsharingReview.new(content: params[:content], grade: params[:grade], carsharing_id: params[:carsharing_id], passenger_id: current_user)
    if @csr.save
      redirect_to root_path
    else
      redirect_to new_carsharing_carsharing_review_path(params[:carsharing_id])
    end
  end
end
