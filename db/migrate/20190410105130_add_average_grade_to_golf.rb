class AddAverageGradeToGolf < ActiveRecord::Migration[5.2]
  def change
    add_column :golves, :average_grade, :string
  end
end
