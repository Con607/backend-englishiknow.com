class CourseSerializer < ActiveModel::Serializer
  attributes :id, :author, :student_ids, :reviewed, :published,
    :course_category_id, :title, :description, :duration,
    :max_students, :featured, :passing_mark, :course_payment, :price, :sale_price,
    :sale_start_date, :sale_end_date, :feature_image, :created_at

  belongs_to :author
  has_many :course_sections
end
