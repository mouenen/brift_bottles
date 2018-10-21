# frozen_string_literal: true

class User < ApplicationRecord
  attr_writer :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:login]

  has_many :bottles, dependent: :destroy
  has_many :comments, dependent: :destroy

  validate :validate_name

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(['lower(name) = :value OR lower(email) = :value', { value: login.downcase }]).first
    else
      if conditions[:name].nil?
        where(conditions).first
      else
        where(name: conditions[:name]).first
      end
    end
  end

  def validate_name
    errors.add(:name, :invalid) if User.where(email: name).exists?
  end

  def login
    @login || name || email
  end
end
