class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password

  has_many :checkouts
end
