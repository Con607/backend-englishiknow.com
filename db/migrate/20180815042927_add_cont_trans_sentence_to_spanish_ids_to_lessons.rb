class AddContTransSentenceToSpanishIdsToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :cont_trans_sentence_spanish_ids, :integer
  end
end
