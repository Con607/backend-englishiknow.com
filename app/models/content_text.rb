class ContentText < ApplicationRecord
  validates :lesson_id, :content, presence: true

  belongs_to :lesson
end
