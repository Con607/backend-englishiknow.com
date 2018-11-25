class AuthorSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  # has_many :courses
end
