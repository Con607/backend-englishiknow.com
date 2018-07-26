class Course < ApplicationRecord
  belongs_to :author
  has_many :students
  has_many :lessons
  has_many :course_sections
  has_many :course_categories
end
