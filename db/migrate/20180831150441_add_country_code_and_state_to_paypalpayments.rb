class AddCountryCodeAndStateToPaypalpayments < ActiveRecord::Migration[5.1]
  def change
    add_column :paypal_payments, :country_code, :string
    add_column :paypal_payments, :state, :string
  end
end
