rclass AddValidationToCarsharings < ActiveRecord::Migration[5.2]
  def change
    add_column :carsharings, :validated, :boolean
  end
end
