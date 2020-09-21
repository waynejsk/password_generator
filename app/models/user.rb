class User < ApplicationRecord
  has_secure_password
  has_many :keys, dependent: :destroy
end
