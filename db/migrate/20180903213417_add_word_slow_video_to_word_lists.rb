class AddWordSlowVideoToWordLists < ActiveRecord::Migration[5.1]
  def change
    add_column :word_lists, :word_slow_video, :string
  end
end
