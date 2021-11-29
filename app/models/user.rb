class User < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :email
    end
end
