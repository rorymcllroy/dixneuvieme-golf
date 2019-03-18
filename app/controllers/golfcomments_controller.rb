class GolfcommentsController < ApplicationController
  # before_action :authenticate_user, only: [:create]
  #   before_action :author_comment, only: [:edit, :update, :destroy]

  def new

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

  def authenticate_user
      unless current_user
        flash[:danger] = "Please log in."
        redirect_to new_session_path #check the name root
    end
  end

  def author_comment
    @comment = Comment.find(params[:id])
    unless current_user == @comment.user
        flash[:danger] = "Tu n'es pas l'auteur de ce commentaire."
        redirect_to root_path
    end
  end
end