class CreateContentTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :content_texts do |t|
      t.integer :lesson_id
      t.text :content

      t.timestamps
    end
  end
end
