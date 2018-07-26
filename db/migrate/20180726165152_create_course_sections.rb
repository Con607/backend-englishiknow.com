class CreateCourseSections < ActiveRecord::Migration[5.1]
  def change
    create_table :course_sections do |t|
      t.integer :course_id
      t.integer :lesson_ids
      t.string :name
      t.integer :quiz_id

      t.timestamps
    end
  end
end
