class User < ApplicationRecord
	 has_many :reviews
	 has_many :orders
	 has_one :cart
	 has_secure_password
	 validates :username, uniqueness: { case_sensitive:
	false }

end
