class PaypalPaymentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :order_id, :payer_id, :payment_id, :payment_token, :cart, :create_time, :paypal_id, :intent, :payer_email, :payer_first_name, :payer_middle_name, :payer_last_name, :payer_id, :payment_method, :status, :currency, :total
end
