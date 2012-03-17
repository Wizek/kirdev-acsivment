class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  
  validates :email, :password, :presence => true
  
  has_many :achievements
end
