class Post < ActiveRecord::Base
  attr_accessible :title, :text

  has_many :comments
  belongs_to :user

  validates :title, :text, presence: true
end
