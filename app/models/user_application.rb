class UserApplication < ApplicationRecord
  acts_as_list
  
  belongs_to :user
  belongs_to :application
end
