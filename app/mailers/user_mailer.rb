class UserMailer < ApplicationMailer
  default from: 'no-reply@dixneuviemetrou.fr'

  def welcome_email(user)
    @user = user
    @url  = 'https://dixneuvieme-golf-production.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue sur 19ème trou!')
  end
end
 
