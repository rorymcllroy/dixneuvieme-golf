class AddCityReferenceCarsharing < ActiveRecord::Migration[5.2]
  def change
    add_reference :carsharings, :city, index: true
  end
end
