class CreateWordExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :word_examples do |t|
      t.string :sentence
      t.string :fast_video
      t.string :slow_video
      t.integer :word_list_id

      t.timestamps
    end
  end
end
