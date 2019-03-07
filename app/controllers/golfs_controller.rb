class GolfsController < ApplicationController

def index
  @golfs = Golf.all
  @comments= Golfcomment

end


def show
  @golf= Golf.find(params[:id])
  @user = User.find(params[:id])
  @comments= Golfcomment
end

def new
  @golf = Golf.new
end

def create
  @golf = Golf.new(golf_id: params[:golf_id], description: params[:description], price_range: params[:price_range], lat: params[:lat], long: params[:long] )

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

end