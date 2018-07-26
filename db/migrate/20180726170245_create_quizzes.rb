class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.integer :course_section_id
      t.string :title
      t.integer :author_id
      t.text :description
      t.integer :quiz_question_ids
      t.integer :quiz_answer_ids

      t.timestamps
    end
  end
end
