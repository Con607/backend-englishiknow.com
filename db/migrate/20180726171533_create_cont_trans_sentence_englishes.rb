class CreateContTransSentenceEnglishes < ActiveRecord::Migration[5.1]
  def change
    create_table :cont_trans_sentence_englishes do |t|
      t.integer :lesson_id
      t.string :sentence
      t.string :translation
      t.string :answer

      t.timestamps
    end
  end
end
