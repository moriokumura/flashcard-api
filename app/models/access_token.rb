class AccessToken < ApplicationRecord
  belongs_to :user

  scope :not_expired, -> { where(expired_at: nil) }
end
