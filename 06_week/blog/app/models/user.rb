class User < ActiveRecord::Base
	has_many :posts
	has_one :profile
	has_and_belongs_to_many :roles
end
