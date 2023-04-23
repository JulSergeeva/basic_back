class User < ApplicationRecord
  has_secure_password
  def self.recovery_password
  end

  has_many :posts, dependent: :destroy
  validates :name, :email, presence: true
end
