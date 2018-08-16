class ContTransSentenceSpanishSerializer < ActiveModel::Serializer
  attributes :id, :name, :sentence, :translation, :answer, :lesson_id
end
