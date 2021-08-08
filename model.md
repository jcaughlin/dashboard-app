
# Example Model

```ruby
# Table Name User
#
# login:string
# email:string
# password_digest:string

# virtual attributes created by has_secure_password
# password:string virtual
# password_confirmation:string virtual
  class User < ApplicationRecord
    has_many :applicationviews
    has_many :applications, through: :applicationviews

    has_secure_password
    validates :login, presence: true 
  end

  class ApplicationView < ApplicationRecord
    belongs_to :user
    belongs_to :application
  end

# Table name: application
#
# name            :string
# description     :string 
# color           :string
# default_status  :boolean
# link            :string
  class Application < ApplicationRecord
    has_many :applicationviews
    has_many :users, through: :appointments

    validates :name, presence: true
    validates :color, presence: true
    validates :default_status, presence: true
    validates :link, presence: true
  end
```
