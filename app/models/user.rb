class User < ApplicationRecord
  has_secure_password

  validates :login, presence: true 

  has_many :user_applications
  has_many :applications, :through => :user_applications
end
