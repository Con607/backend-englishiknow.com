class QuizAnswer < ApplicationRecord
  validates :quiz_question_id, :quiz_id, :answer,
              :is_correct, presence: true

  belongs_to :quiz_question
  belongs_to :quiz
end
