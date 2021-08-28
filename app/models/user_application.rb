class UserApplication < ApplicationRecord
  belongs_to :user
  belongs_to :application
  acts_as_list :scope => :user
end
