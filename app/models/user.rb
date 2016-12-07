class User < ApplicationRecord
  has_many :posts
  has_many :votes
  has_many :voted_posts, through: :votes, source: "post"
  
  has_secure_password

  validates :email, :password_digest, presence: true
end
