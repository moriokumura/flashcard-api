class User < ApplicationRecord
  has_secure_password
  has_many :access_tokens
  has_many :cards
end
