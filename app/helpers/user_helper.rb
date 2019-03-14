module UserHelper
  def user_by_id(id)
    User.find(id)
  end
  def passenger_of_a_carsharing(carsharing_id)
    Passenger.all.where(carsharing_id:carsharing_id)
  end
end