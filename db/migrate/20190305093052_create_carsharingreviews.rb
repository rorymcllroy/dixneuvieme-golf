class CreateCarsharingreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :carsharingreviews do |t|
      t.text :content
      t.string :grade

      t.belongs_to :carsharing, index: true
      t.references :passenger, index: true
      t.timestamps
    end
  end
end
