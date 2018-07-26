class ContTransSentenceEnglish < ApplicationRecord
  validates :lesson_id, :sentence, :translation, :answer, presence: true

  belongs_to :lesson
end
