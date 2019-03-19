class GolfcommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  #   before_action :author_comment, only: [:edit, :update, :destroy]
  
  def new
    @golf = Golf.find(params[:golf_id])
  end
  
  def create
    @comment = Golfcomment.new(user_id: current_user.id, grade: params[:grade], content: params[:content], golf_id: params[:golf_id])
    if @comment.save!
      redirect_to golf_path(params[:golf_id]), :notice => "Commentaire ajouté!"
    else
      render 'new'
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    comment_params = params.permit(:content)
    
    if @comment.update(comment_params)
      redirect_to comment_path(params[:id])
    else
      render :edit
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comment_path(params[:id])
  end
end