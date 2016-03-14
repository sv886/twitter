class User < ActiveRecord::Base

  has_secure_password
  has_many :posts

  acts_as_followable
  acts_as_follower

  validates :username, :password, :photo, presence: true
  attachment :photo

end
