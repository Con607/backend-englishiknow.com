class User < ApplicationRecord
  enum role: [:student, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :jwt_authenticatable,
          jwt_revocation_strategy: JWTBlacklist
         # :recoverable, :rememberable, :validatable,
         # :jwt_authenticatable, jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null


  has_one :author
  has_one :student
  has_many :paypal_payments

end
