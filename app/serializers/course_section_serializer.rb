class CourseSectionSerializer < ActiveModel::Serializer
  attributes :id, :course_id, :name, :quiz_id, :lessons

  has_many :lessons
end
