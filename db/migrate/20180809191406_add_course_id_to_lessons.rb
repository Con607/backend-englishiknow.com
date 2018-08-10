class AddCourseIdToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :course_id, :integer
  end
end
