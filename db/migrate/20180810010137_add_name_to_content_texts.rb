class AddNameToContentTexts < ActiveRecord::Migration[5.1]
  def change
    add_column :content_texts, :name, :string
  end
end
