class AddWordFastVideoToWordLists < ActiveRecord::Migration[5.1]
  def change
    add_column :word_lists, :word_fast_video, :string
  end
end
