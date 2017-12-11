class User < ApplicationRecord
  has_many :itineraries
  has_many :attendances
  has_many :attended_concerts, through: :attendances, source: :concert

  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :email, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  has_secure_password
end
