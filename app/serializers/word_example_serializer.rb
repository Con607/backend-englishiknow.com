class WordExampleSerializer < ActiveModel::Serializer
  attributes :id, :sentence, :fast_video, :slow_video, :word_list_id
end
