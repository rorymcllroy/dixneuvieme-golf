class Passenger < ApplicationRecord
  belongs_to :passenger, class_name: "User"
  belongs_to :carsharing

  validates :stripe_customer_id, 
  presence: true

end
