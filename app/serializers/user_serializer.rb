class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :role

  has_one :author
  has_one :student
  has_many :paypal_payments
end
