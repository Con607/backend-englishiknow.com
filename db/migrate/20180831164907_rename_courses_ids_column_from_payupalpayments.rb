class RenameCoursesIdsColumnFromPayupalpayments < ActiveRecord::Migration[5.1]
  def change
    rename_column :paypal_payments, :courses_ids, :courses_paypalpayment_ids
    add_column :courses, :courses_paypalpayment_ids, :integer
  end
end
