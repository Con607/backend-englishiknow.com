class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.integer :author_id
      t.integer :student_id
      t.boolean :reviewed
      t.boolean :published
      t.integer :course_section_ids
      t.integer :course_category_ids
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :max_students
      t.boolean :featured
      t.integer :passing_mark
      t.boolean :course_payment
      t.integer :price
      t.integer :sale_price
      t.datetime :sale_start_date
      t.datetime :sale_end_date
      t.string :feature_image
      t.integer :lesson_ids

      t.timestamps
    end
  end
end
