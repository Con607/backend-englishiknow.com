class RemoveFastSlowFromWordExamplesAndWordLists < ActiveRecord::Migration[5.1]
  def change
    remove_column :word_lists, :fast_video
    remove_column :word_lists, :slow_video
    remove_column :word_examples, :fast_video
    remove_column :word_examples, :slow_video
  end
end
