class User < ApplicationRecord
  has_secure_password

  has_many :notes, foreign_key: :created_by

  #validations
  validates_presence_of :name, :email, :password_digest
  validates :email ,uniqueness: { case_sensitive: false }
end
