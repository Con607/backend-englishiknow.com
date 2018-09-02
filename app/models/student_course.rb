class StudentCourse < ApplicationRecord
  validates :student_id, :course_id, presence: true

  belongs_to :student
  belongs_to :course

end
