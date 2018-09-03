class AddSentenceFastVideoToWordExamples < ActiveRecord::Migration[5.1]
  def change
    add_column :word_examples, :sentence_fast_video, :string
  end
end
