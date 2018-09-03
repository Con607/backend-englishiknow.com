class AddSentenceSlowVideoToWordExamples < ActiveRecord::Migration[5.1]
  def change
    add_column :word_examples, :sentence_slow_video, :string
  end
end
