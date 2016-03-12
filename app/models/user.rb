class User < ActiveRecord::Base

  has_secure_password

  has_many :posts

  validates :username, :password_digest, presence: true

end
