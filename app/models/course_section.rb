class CourseSection < ApplicationRecord
  validates :course_id, :name, presence: true

  belongs_to :course
  belongs_to :lesson
  has_one :quiz
end
