class CourseSection < ApplicationRecord
  validates :name, presence: true

  belongs_to :course
  has_many :lessons
  has_one :quiz
end
