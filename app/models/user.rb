class User < ApplicationRecord
  has_secure_password
  with_options presence: true do
    validates :name
    validates :email
    validates :password
    end
end
