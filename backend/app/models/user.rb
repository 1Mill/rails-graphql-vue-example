class User < ApplicationRecord
	validates :name,
		:presence => true

	has_many :posts,
		:dependent => :destroy
end
