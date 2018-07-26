class QuizQuestion < ApplicationRecord
  validates :question, :quiz_id, presence: true

  belongs_to :quiz
  has_many :quiz_answers
end
