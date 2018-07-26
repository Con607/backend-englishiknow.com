class Comment < ApplicationRecord
  validates :title, :user_id, :lesson_id, presence: true

  belongs_to :lesson
end
