class Student < ApplicationRecord
  #validates :user_id, presence: true
  #validates :course_ids, presence: true

  belongs_to :user
  has_many :student_courses
  has_many :courses, through: :student_courses
end
