class Quiz < ApplicationRecord
  belongs_to :course_section
  has_many :quiz_questions
end
