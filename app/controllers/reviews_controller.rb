class ReviewsController < ApplicationController
end

def index

end

def show
  @carsharing = Carsharing.find(params[:id])
  @reviews = @carsharing.reviews
end

def new
  @carsharing = Carsharing.find(params[:id])
  @review = @carsharing.review.new
end

def create
  @review = Review.create(review_id: params[:review_id], content: params[:content], user_id: session[:user_id] , carsharing_id: params[:carsharing_id], date: params[:date], )
  redirect_to root_path
end

def edit
  @review = Review.find(params[:id])
end

def update

end

def destroy
  @review = Review.find(params[:id])
  @review.destroy
  redirect_to root_path
end
