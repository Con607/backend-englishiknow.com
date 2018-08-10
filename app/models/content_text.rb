class ContentText < ApplicationRecord
  validates :lesson_id, :name,  presence: true

  belongs_to :lesson
end
