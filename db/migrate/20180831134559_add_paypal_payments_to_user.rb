class AddPaypalPaymentsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :paypal_payment_ids, :integer
  end
end
