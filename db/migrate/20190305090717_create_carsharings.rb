class CreateCarsharings < ActiveRecord::Migration[5.2]
  def change
    create_table :carsharings do |t|
      t.datetime :date
      t.integer :places
      t.text :description
      t.integer :price

      t.belongs_to :golf, index: true
      t.references :driver, index: true
      t.timestamps
    end
  end
end
