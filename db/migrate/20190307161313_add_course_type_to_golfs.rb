class AddCourseTypeToGolfs < ActiveRecord::Migration[5.2]
  def change
    add_column :golves, :course_type, :string
  end
end
