class PassengerMailer < ApplicationMailer
  
  default from: 'no-reply@dixneuviemetrou.fr'
  
  def new_passenger_email(passenger)
    @carsharing = passenger.carsharing
    @passenger = passenger.passenger
    @url  = 'https://dixneuvieme-golf-production.herokuapp.com/'
    mail(to: @passenger.email, subject: 'Confirmation de réservation!')
  end
  
  def new_reservation_passenger_email(passenger)
    @carsharing = passenger.carsharing
    @passenger = passenger.passenger
    @url  = 'https://dixneuvieme-golf-production.herokuapp.com/'
    mail(to: @carsharing.driver.email, subject: 'Un passager a rejoint votre covoiturage!')
  end
  
  def carsharing_review_email(passenger)
    @carsharing = passenger.carsharing
    @passenger = passenger.passenger
    @url  = 'https://dixneuvieme-golf-production.herokuapp.com/'
    mail(to: @passenger.email, subject: 'Note ton dernier covoiturage!')
  end
  
end