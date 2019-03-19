class ChangeGradeTypeToInt < ActiveRecord::Migration[5.2]
  def change
    remove_column :carsharingreviews, :grade, :string
    remove_column :golfcomments, :grade, :string
    add_column :carsharingreviews, :grade, :float
    add_column :golfcomments, :grade, :float
  end
end
