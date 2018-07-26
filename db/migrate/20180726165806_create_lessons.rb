class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.integer :course_section_id
      t.string :name
      t.integer :author_id
      t.integer :duration
      t.boolean :preview
      t.integer :comment_ids
      t.integer :content_text_ids
      t.integer :cont_trans_sentence_to_english_ids

      t.timestamps
    end
  end
end
