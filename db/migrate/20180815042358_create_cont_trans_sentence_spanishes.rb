class CreateContTransSentenceSpanishes < ActiveRecord::Migration[5.1]
  def change
    create_table :cont_trans_sentence_spanishes do |t|
      t.string :name
      t.string :sentence
      t.string :translation
      t.string :answer
      t.integer :lesson_id

      t.timestamps
    end
  end
end
