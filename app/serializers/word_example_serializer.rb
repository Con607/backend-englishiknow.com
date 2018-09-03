class WordExampleSerializer < ActiveModel::Serializer
  attributes :id, :sentence, :sentence_fast_video, :sentence_slow_video, :word_list_id
end
