class FixCourseStudentsRelation < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :student_course_ids, :integer
    add_column :students, :student_course_ids, :integer
  end
end
