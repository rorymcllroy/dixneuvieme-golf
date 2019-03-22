class CarsharingMailer < ApplicationMailer
  default from: 'no-reply@dixneuviemetrou.fr'

  def carsharing_admin_update_email(carsharing)
    @carsharing = carsharing
    @url  = 'http://localhost:3000/'
    mail(to: @carsharing.driver.email, subject: 'Validation du covoiturage')
  end
end
 
