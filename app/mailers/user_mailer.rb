class UserMailer < ApplicationMailer
  default from: 'no-reply@dixneuviemetrou.fr'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Bienvenue sur 19ème trou!')
  end
end
 
