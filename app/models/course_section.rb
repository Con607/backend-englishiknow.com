class CourseSection < ApplicationRecord
  validates :name, presence: true

  belongs_to :course, optional: true
  belongs_to :lesson, optional: true
  has_one :quiz
end
