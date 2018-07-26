class CourseSection < ApplicationRecord
  belongs_to :course
  belongs_to :lesson
  has_one :quiz
end
