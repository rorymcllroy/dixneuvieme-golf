class CarsharingReviewEmailJob < ApplicationJob
  queue_as :default

  def perform(passenger)
    @passenger = passenger
    PassengerMailer.carsharing_review_email(@passenger).deliver_later
  end
end
