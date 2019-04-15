module PrivatemessagesHelper
  def pm_count(sender_id, recipient_id)
    Privatemessage.where(sender_id: sender_id, recipient_id: recipient_id).count + Privatemessage.where(sender_id: recipient_id, recipient_id: sender_id).count 
  end
  def unread_message(recipient_id)
    Privatemessage.where(recipient_id: recipient_id).where(is_read: false).count
  end
end
