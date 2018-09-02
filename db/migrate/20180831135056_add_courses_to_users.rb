class AddCoursesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :course_ids, :integer
  end
end
