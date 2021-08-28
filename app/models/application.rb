class Application < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :color, presence: true
  validates :link, presence: true
 
  has_many :user_applications, -> { order(position: :asc) }
  has_many :users, :through => :user_applications
end
