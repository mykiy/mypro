#require 'bcrypt'
class User < ApplicationRecord

#	 include BCrypt
	has_many :posts
	has_many :attaches
#	has_secure_password

	def staff? 
  		self.role == 'staff' 
	end

	def student? 
  		self.role == 'student' 
	end

	def admin? 
  		self.role == 'admin' 
	end

     
end