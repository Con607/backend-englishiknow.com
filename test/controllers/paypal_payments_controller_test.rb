require 'test_helper'

class PaypalPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paypal_payment = paypal_payments(:one)
  end

  test "should get index" do
    get paypal_payments_url, as: :json
    assert_response :success
  end

  test "should create paypal_payment" do
    assert_difference('PaypalPayment.count') do
      post paypal_payments_url, params: { paypal_payment: { cart: @paypal_payment.cart, create_time: @paypal_payment.create_time, currency: @paypal_payment.currency, intent: @paypal_payment.intent, order_id: @paypal_payment.order_id, payer_email: @paypal_payment.payer_email, payer_first_name: @paypal_payment.payer_first_name, payer_id: @paypal_payment.payer_id, payer_id: @paypal_payment.payer_id, payer_last_name: @paypal_payment.payer_last_name, payer_middle_name: @paypal_payment.payer_middle_name, payment_id: @paypal_payment.payment_id, payment_method: @paypal_payment.payment_method, payment_token: @paypal_payment.payment_token, paypal_id: @paypal_payment.paypal_id, status: @paypal_payment.status, total: @paypal_payment.total, user_id: @paypal_payment.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show paypal_payment" do
    get paypal_payment_url(@paypal_payment), as: :json
    assert_response :success
  end

  test "should update paypal_payment" do
    patch paypal_payment_url(@paypal_payment), params: { paypal_payment: { cart: @paypal_payment.cart, create_time: @paypal_payment.create_time, currency: @paypal_payment.currency, intent: @paypal_payment.intent, order_id: @paypal_payment.order_id, payer_email: @paypal_payment.payer_email, payer_first_name: @paypal_payment.payer_first_name, payer_id: @paypal_payment.payer_id, payer_id: @paypal_payment.payer_id, payer_last_name: @paypal_payment.payer_last_name, payer_middle_name: @paypal_payment.payer_middle_name, payment_id: @paypal_payment.payment_id, payment_method: @paypal_payment.payment_method, payment_token: @paypal_payment.payment_token, paypal_id: @paypal_payment.paypal_id, status: @paypal_payment.status, total: @paypal_payment.total, user_id: @paypal_payment.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy paypal_payment" do
    assert_difference('PaypalPayment.count', -1) do
      delete paypal_payment_url(@paypal_payment), as: :json
    end

    assert_response 204
  end
end
