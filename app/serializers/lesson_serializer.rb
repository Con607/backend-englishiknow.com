class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :content_texts,
              :cont_trans_sentence_englishes,
              :cont_trans_sentence_spanishes

  has_many :content_texts
  has_many :cont_trans_sentence_englishes
  has_many :cont_trans_sentence_spanishes
end
