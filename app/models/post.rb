class Post < ActiveRecord::Base

  belongs_to :user

  validates :text, presence: true
  attachment :photo

end
