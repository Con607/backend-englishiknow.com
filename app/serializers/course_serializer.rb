class CourseSerializer < ActiveModel::Serializer
  attributes :id, :author_id, :student_ids, :reviewed, :published,
    :course_category_id, :title, :description, :duration,
    :max_students, :featured, :passing_mark, :course_payment, :price, :sale_price,
    :sale_start_date, :sale_end_date, :feature_image

  has_many :course_sections
end
