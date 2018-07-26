class Course < ApplicationRecord
  validates :author_id, :title, :passing_mark, :course_payment,
              :price, presence: true

  belongs_to :author
  has_many :students
  has_many :lessons
  has_many :course_sections
  has_many :course_categories
end
