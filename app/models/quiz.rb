class Quiz < ApplicationRecord
  validates :course_section_id, :title, :author_id, presence: true

  belongs_to :course_section
  has_many :quiz_questions
end
