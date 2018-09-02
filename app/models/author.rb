class Author < ApplicationRecord
  #validates :course_ids, presence: true
  # validates :user_id, presence: true

  belongs_to :user
  has_many :courses
end
