class User < ActiveRecord::Base
  has_secure_password
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  password_regex = /(?=.*[\W])/
  validates :username, :presence => true
  validates :email, :presence => true, :format => { :with => email_regex}, :uniqueness => { :case_sensitive => false}
  validates :password, :presence => true, :format => { :with => password_regex}
  has_many :posts
  has_many :messages
end
