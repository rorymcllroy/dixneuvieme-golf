class ConversationsController < ApplicationController
  before_action :authenticate_user!
  def show
    @private_message = Privatemessage.all
    Privatemessage.where(recipient_id: current_user).where(sender_id: params[:id]).update(is_read:true)
  end
  def create
    @new_pm = Privatemessage.new(content: params[:content], recipient_id: params[:recipient], sender_id: params[:user_id], is_read: false)
    if @new_pm.save
      respond_to do |format|
        format.html { redirect_to user_conversation_path(current_user, params[:recipient][:id]) }
        format.js
      end
    else
    end
  end
end
