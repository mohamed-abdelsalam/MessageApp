class Client < ApplicationRecord
  self.primary_key = 'client_name'
  has_secure_password
  validates :client_name, uniqueness: true
  validates :client_name, :client_type, :password, :password_confirmation, presence: true
  validates :password, confirmation: true
end
