class GolfsController < ApplicationController
  before_action :is_admin?, only: [:new, :destroy, :edit]
  include GolfcommentsHelper

  def index
    @golfs = Golf.all
    Golf.all.each do |golf|
      if comments_by_golf(golf.id).count == 0
        golf.update(average_grade: 0)
      else
        golf.update(average_grade: comments_by_golf(golf.id).sum(:grade) / comments_by_golf(golf.id).count)
      end
    end
    if params[:term]
      @golfs = Golf.where('name ILIKE ?', "#{params[:term]}%")
    end
  end
  
  def show
    @golf= Golf.find(params[:id])
    @comments= Golfcomment.all.where(golf_id:@golf.id)
    @comment= Golfcomment.all.where(golf_id:@golf.id).sample
  end
  
  def new
    @golf = Golf.new
  end
  
  def create
    @golf = Golf.new(name: params[:name], description: params[:description], price_range: params[:price_range], lat: params[:lat], long: params[:long] )
    
    if @golf.save
      redirect_to admin_root_path 
      flash[:success] = "Nouveau golf créé avec succès."
    else
      redirect_to admin_golfs_path 
      flash[:error] = "Erreur - golf non créé."
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
