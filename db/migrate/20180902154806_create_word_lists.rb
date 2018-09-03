class CreateWordLists < ActiveRecord::Migration[5.1]
  def change
    create_table :word_lists do |t|
      t.string :word
      t.string :fast_video
      t.string :slow_video
      t.integer :word_example_ids

      t.timestamps
    end
  end
end
