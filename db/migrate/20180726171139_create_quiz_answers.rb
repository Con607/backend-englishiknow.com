class CreateQuizAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_answers do |t|
      t.integer :quiz_question_id
      t.integer :quiz_id
      t.string :answer
      t.boolean :is_correct

      t.timestamps
    end
  end
end
