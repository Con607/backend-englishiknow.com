class WordExample < ApplicationRecord
  belongs_to :word_list

  mount_uploader :sentence_fast_video, SentenceFastVideoUploader
  mount_uploader :sentence_slow_video, SentenceSlowVideoUploader

end
