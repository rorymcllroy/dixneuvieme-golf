class PassengerMailer < ApplicationMailer

    default from: 'no-reply@dixneuviemetrou.fr'

    def confirmed_reservation_email(user)
      @user = user
      @url  = 'http://localhost:3000/'
      mail(to: @user.email, subject: 'Réservation covoiturage !')
    end

end

