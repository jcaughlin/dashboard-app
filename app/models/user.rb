class User < ApplicationRecord
  has_secure_password

  validates :login, presence: true 

  has_many :user_applications, -> { order(position: :asc) }
  has_many :applications, :through => :user_applications

  after_create :assign_default_apps

  def assign_default_apps
    applications << Application.where(default_status: 'true')
  end
 
end
