class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  has_many :posts
  has_many :comments

  validates :email, :name, presence: true
  validates :email, uniqueness: true

  has_secure_password
end
