class Student < ApplicationRecord
  #validates :user_id, presence: true
  #validates :course_ids, presence: true

  has_many :student_courses
  has_many :courses, through: :student_courses
  # belongs_to :user # Add it when users model is created
end
