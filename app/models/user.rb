class User < ApplicationRecord
  attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :testofuser
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.id).first_or_create do |user|
    user.username = auth.info.username
    user.password = Devise.friendly_token[0,20]
    end
  end
  def self.find_for_database_authentication warden_condition

    conditions = warden_condition.dup
      if (login = conditions.delete(:login))
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
  end
end
