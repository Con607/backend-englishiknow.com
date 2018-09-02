class CreatePaypalPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :paypal_payments do |t|
      t.integer :user_id
      t.string :order_id
      t.string :payer_id
      t.string :payment_id
      t.string :payment_token
      t.string :cart
      t.datetime :create_time
      t.string :paypal_id
      t.string :intent
      t.string :payer_email
      t.string :payer_first_name
      t.string :payer_middle_name
      t.string :payer_last_name
      t.string :payer_id
      t.string :payment_method
      t.string :status
      t.string :currency
      t.float :total

      t.timestamps
    end
  end
end
