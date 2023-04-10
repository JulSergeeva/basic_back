class User < ApplicationRecord
  include ActiveModel::API

  def self.recovery_password
  end

  has_many :posts, dependent: :destroy
  validates :name, :email, presence: true
end
