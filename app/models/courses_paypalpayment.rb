class CoursesPaypalpayment < ApplicationRecord
  validates :paypal_payment_id, :course_id, presence: true

  belongs_to :paypal_payment
  belongs_to :course

end
