class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :user_id
      t.integer :course_ids

      t.timestamps
    end
  end
end
