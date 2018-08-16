class ContTransSentenceEnglishSerializer < ActiveModel::Serializer
  attributes :id, :name, :lesson_id, :sentence, :translation, :answer
end
