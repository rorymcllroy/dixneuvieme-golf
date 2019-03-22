class PrivatemessageMailer < ApplicationMailer
  default from: 'no-reply@dixneuviemetrou.fr'

  def new_pm_email(pm)
    @pm = pm
    @url  = 'http://localhost:3000/'
    mail(to: @pm.recipient.email, subject: 'Tu as reçu un nouveau message')
  end
end
 
