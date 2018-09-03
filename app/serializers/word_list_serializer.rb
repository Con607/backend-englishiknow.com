class WordListSerializer < ActiveModel::Serializer
  attributes :id, :word, :fast_video, :slow_video, :word_fast_video, :word_example_ids
end
