class RenamecontTransSentenceEnglishesFromLessons < ActiveRecord::Migration[5.1]
  def change
    rename_column :lessons, :cont_trans_sentence_to_english_ids, :cont_trans_sentence_english_ids
  end
end
