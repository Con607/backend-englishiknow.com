class AddCourseIdsToPaypalPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :paypal_payments, :courses_ids, :integer
  end
end
