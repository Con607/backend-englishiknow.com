class WordList < ApplicationRecord
  has_many :word_examples

  mount_uploader :word_fast_video, WordFastVideoUploader
  mount_uploader :word_slow_video, WordSlowVideoUploader

end
