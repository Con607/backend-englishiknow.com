class WordListSerializer < ActiveModel::Serializer
  attributes :id, :word, :word_fast_video, :word_slow_video, :word_example_ids
end
