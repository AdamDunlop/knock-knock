class User < ActiveRecord::Base
  has_many :events
  validates :email, :password, presence: true, uniqueness: true
end