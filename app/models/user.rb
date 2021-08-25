class User < ApplicationRecord
  # after_create :assign_default_apps

  has_secure_password

  validates :login, presence: true 

  has_many :user_applications
  has_many :applications, :through => :user_applications

  # def assign_default_apps
  #  applications << Application.where(default_status: 'true')
  # end
   # set default apps
  after_initialize do |user|
    self.applications << Application.where(default_status: 'true') if self.new_record?
  end
end
