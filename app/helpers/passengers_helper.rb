module PassengersHelper
  def passengers_booked(carsharing_id)
    Passenger.all.where(carsharing_id: carsharing_id).count
  end
  def passenger_of_carsharing_array(carsharing_id)
    Passenger.all.where(carsharing_id: carsharing_id)
  end
  def carsharing_as_passenger(user_id)
    Passenger.all.where(passenger_id: user_id).count
  end
end
