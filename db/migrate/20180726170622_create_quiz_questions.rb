class CreateQuizQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_questions do |t|
      t.string :question
      t.integer :question_option_ids
      t.integer :quiz_id
      t.integer :quiz_answer_ids

      t.timestamps
    end
  end
end
