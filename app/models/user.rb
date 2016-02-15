class User < ActiveRecord::Base
	has_many :secrets
	has_many :likes, dependent: :destroy
	has_many :secrets, through: :likes, source: :secret
	has_secure_password
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :name, presence: true, length: { in: 2..50 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

	def create_user
		
	end

end
