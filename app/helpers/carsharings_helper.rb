module CarsharingsHelper
  def carsharing_as_driver(user_id)
    Carsharing.all.where(driver_id: user_id).count
  end
end
