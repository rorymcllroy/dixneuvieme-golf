class Passenger < ApplicationRecord

  after_create :confirmed_reservation_send

  def confirmed_reservation_send 
    PassengerMailer.confirmed_reservation_email(self).deliver_now
  end

  belongs_to :passenger, class_name: "User"
  belongs_to :carsharing

  validates :stripe_customer_id, 
  presence: true

end
