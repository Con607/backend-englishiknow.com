class Quiz < ApplicationRecord
  validates  :title, :author_id, presence: true

  belongs_to :course_section
  has_many :quiz_questions
end
