class CreateGolves < ActiveRecord::Migration[5.2]
  def change
    create_table :golves do |t|
      t.string :description
      t.string :price_range
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
