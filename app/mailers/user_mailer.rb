class UserMailer < ApplicationMailer
  default from: 'no-reply@dixneuviemetrou.fr'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/users/sign_up'
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end
end
