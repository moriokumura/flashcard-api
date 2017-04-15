class User < ApplicationRecord
  has_secure_password
  has_many :access_tokens
  has_many :cards

  # expire all existing tokens
  def expire_access_tokens
    access_tokens.not_expired.update_all(expired_at: Time.now)
  end
end
