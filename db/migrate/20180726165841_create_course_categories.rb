class CreateCourseCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :course_categories do |t|
      t.integer :course_ids

      t.timestamps
    end
  end
end
