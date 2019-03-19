module CarsharingreviewsHelper
  def reviews_nb_by_driver(driver_id) 
    total_review = 0
    Carsharing.all.where(driver_id:driver_id).each do |carsharing|
      total_review = total_review + Carsharingreview.all.where(carsharing_id: carsharing.id).count
    end
    return total_review
  end
  def average_grade_by_driver(driver_id)
    average_grade = 0
    total_review = reviews_nb_by_driver(driver_id)
    Carsharing.all.where(driver_id:driver_id).each do |carsharing|
      Carsharingreview.all.where(carsharing_id: carsharing.id).each do |review|
        average_grade = average_grade + review.grade
      end
    end
  return average_grade / total_review
  end
end
