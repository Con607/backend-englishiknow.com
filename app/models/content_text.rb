class ContentText < ApplicationRecord
  validates :lesson_id, :name,  presence: true, on: :create

  belongs_to :lesson
end
