class User < ActiveRecord::Base

  has_many :posts

  validates :username, :email, presence: true

end
