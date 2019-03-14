class PassengerMailer < ApplicationMailer

    default from: 'no-reply@dixneuviemetrou.fr'

    def new_passenger_email(passenger)
        @carsharing = passenger.carsharing
        @passenger = passenger.passenger
        @url  = 'http://localhost:3000/'
      mail(to: @passenger.email, subject: 'Réservation covoiturage !')
    end

    def new_reservation_passenger_email(passenger)
      @carsharing = passenger.carsharing
      @passenger = passenger.passenger
      @url  = 'http://localhost:3000/'
    mail(to: @carsharing.driver.email, subject: 'Réservation covoiturage !')
  end

end