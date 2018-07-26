class Lesson < ApplicationRecord
  validates :course_section_id, :name, :author_id,
              :preview, presence: true

  belongs_to :course_section
  belongs_to :author
  has_many :comments
  has_many :content_texts
  has_many :cont_trans_sentence_to_englishes
end
