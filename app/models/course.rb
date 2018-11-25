class Course < ApplicationRecord
  validates :author_id, :title, :passing_mark, :price, presence: true

  belongs_to :author
  #belongs_to :course_categories
  has_many :course_sections
  has_many :lessons, through: :course_sections
  has_many :student_courses
  has_many :students, through: :student_courses
  has_many :courses_paypalpayments
  has_many :paypal_payments, through: :courses_paypalpayments


  mount_uploader :images, CourseImageUploader

end
