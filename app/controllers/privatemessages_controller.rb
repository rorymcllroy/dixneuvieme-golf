class PrivatemessagesController < ApplicationController
  before_action :authenticate_user!
  def create
    @new_pm = Privatemessage.new(content: params[:content], recipient_id: params[:recipient][:id], sender_id: current_user.id)
    if @new_pm.save!
      flash[:success] = "Message envoyé avec succès"
      redirect_to user_conversation_path(current_user, params[:recipient][:id])
    else
      flash[:danger] = "Erreur dans l'envoi du message"
      redirect_to new_user_private_message_path(current_user)
    end
  end
end