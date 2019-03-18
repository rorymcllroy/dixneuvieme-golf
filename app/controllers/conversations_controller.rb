class ConversationsController < ApplicationController
  before_action :authenticate_user!
  def show
    @private_message = Privatemessage.all
  end
  def create
    @new_pm = Privatemessage.new(content: params[:content], recipient_id: params[:recipient], sender_id: params[:user_id])
    if @new_pm.save
      respond_to do |format|
        format.html { redirect_to user_conversation_path(current_user, params[:recipient]) }
        format.js
        flash[:success] = "Message envoyé avec succès"
      end
    else
      flash[:danger] = "Erreur dans l'envoi du message"
      redirect_to new_user_private_message_path(current_user)
    end
  end
end
