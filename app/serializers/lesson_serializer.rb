class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :content_texts

  has_many :content_texts
end
