class Privatemessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User" 
  after_create :new_pm_email_send

  def new_pm_email_send 
    PrivatemessageMailer.new_pm_email(self).deliver_now
  end


  validates :content, 
  presence: true

end
