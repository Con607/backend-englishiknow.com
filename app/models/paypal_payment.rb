class PaypalPayment < ApplicationRecord

  belongs_to :user
  has_many :courses_paypalpayments
  has_many :courses, through: :courses_paypalpayments

end
