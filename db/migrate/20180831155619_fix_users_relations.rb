class FixUsersRelations < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :course_ids
    add_column :users, :student_ids, :integer
    add_column :users, :author_ids, :integer
  end
end
