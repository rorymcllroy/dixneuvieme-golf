class PrivatemessagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user_all = User.all
  end
  def create
    @new_pm = Privatemessage.new(content: params[:content], recipient_id: params[:recipient][:id], sender_id: current_user.id, is_read: false)
    if @new_pm.save
      redirect_to user_conversation_path(current_user, params[:recipient][:id])
      flash[:success] = "Message envoyé avec succès."
    else
      redirect_to user_conversation_path(current_user, params[:recipient][:id])
      flash[:danger] = "Erreur dans l'envoi du message."
    end
  end
end