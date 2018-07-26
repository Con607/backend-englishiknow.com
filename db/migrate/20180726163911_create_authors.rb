class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.integer :user_id
      t.integer :course_ids

      t.timestamps
    end
  end
end
