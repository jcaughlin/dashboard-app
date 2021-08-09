class User < ApplicationRecord
  has_secure_password

  has_many :user_applications
  has_many :applications, :through => :user_applications
end
