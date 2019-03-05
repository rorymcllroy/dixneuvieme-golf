class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :stripe_customer_id

      t.references :passenger, index: true
      t.belongs_to :carsharing, index: true
      t.timestamps
    end
  end
end
