class User < ApplicationRecord
  validates :email, :api_token, presence: true

  def admin?
    self.admin
  end
end
