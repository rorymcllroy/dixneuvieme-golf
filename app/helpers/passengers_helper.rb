module PassengersHelper
  def passengers_booked(carsharing_id)
    Passenger.all.where(carsharing_id: carsharing_id).count
  end
end
