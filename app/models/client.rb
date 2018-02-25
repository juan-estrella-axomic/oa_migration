class Client < ApplicationRecord
	has_many :instances
	has_many :migrations
	has_many :engineers, :through => :migrations
end
