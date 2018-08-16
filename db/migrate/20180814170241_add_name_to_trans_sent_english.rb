class AddNameToTransSentEnglish < ActiveRecord::Migration[5.1]
  def change
    add_column :cont_trans_sentence_englishes, :name, :string
  end
end
