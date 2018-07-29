class Author < ApplicationRecord
  #validates :course_ids, presence: true
  # validates :user_id, presence: true

  has_many :courses
  # belongs_to :user # Add it when users model is created
end
