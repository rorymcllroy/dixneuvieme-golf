module CarsharingsHelper
  def carsharing_as_driver(user_id)
    Carsharing.all.where(driver_id: user_id).count
  end
  def already_a_passenger(carsharing_id, passenger_id)
     if Passenger.all.where(carsharing_id: carsharing_id).where(passenger_id: passenger_id).count >= 1
        return true
     else
        return false
     end
  end
end
