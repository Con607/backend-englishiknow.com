class PaypalPaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin
  before_action :set_paypal_payment, only: [:show, :update, :destroy]

  # GET /paypal_payments
  def index
    @paypal_payments = PaypalPayment.all

    render json: @paypal_payments
  end

  # GET /paypal_payments/1
  def show
    render json: @paypal_payment
  end

  # POST /paypal_payments
  def create
    @paypal_payment = PaypalPayment.new(paypal_payment_params)
    @paypal_payment.user = current_user

    if @paypal_payment.save
      render json: @paypal_payment.id, status: :created, location: @paypal_payment
    else
      render json: @paypal_payment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paypal_payments/1
  def update
    if @paypal_payment.update(paypal_payment_params)
      render json: @paypal_payment
    else
      render json: @paypal_payment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paypal_payments/1
  def destroy
    @paypal_payment.destroy
  end

  def assign_courses
    course_ids = params[:course_ids]
    paypal_payment_id = params[:paypal_payment_id]

    # JSON.parse(course_ids).each do |course_id| for postman to work needs json.parse
    course_ids.each do |course_id|
      CoursesPaypalpayment.create!(course_id: course_id, paypal_payment_id: paypal_payment_id)
      StudentCourse.create!(course_id: course_id, student_id: current_user.student.id )
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paypal_payment
      @paypal_payment = PaypalPayment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def paypal_payment_params
      params.require(:paypal_payment).permit( :user_id, :order_id, :payer_id, :payment_id, :payment_token,
        :cart, :create_time, :paypal_id, :intent, :payer_email, :payer_first_name, :payer_middle_name,
        :payer_last_name, :payment_method, :status, :currency, :total, :country_code, :state )
      #   :state ])
    end

end
