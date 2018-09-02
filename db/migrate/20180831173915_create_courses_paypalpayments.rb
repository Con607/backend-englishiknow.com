class CreateCoursesPaypalpayments < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_paypalpayments do |t|
      t.integer :paypal_payment_id
      t.integer :course_id

      t.timestamps
    end
  end
end
