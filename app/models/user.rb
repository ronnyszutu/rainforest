class User < ActiveRecord::Base
	has_many :reviews
	has_many :products, :through => :reviews
	has_secure_password
	validates_presence_of :password, :on => :create
end
