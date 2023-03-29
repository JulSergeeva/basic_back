class User < ApplicationRecord
  include ActiveModel::API

  def self.recovery_password
  end
end
