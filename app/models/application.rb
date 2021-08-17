class Application < ApplicationRecord
  acts_as_list
  
  has_many :user_applications
  has_many :users, :through => :user_applications
end
