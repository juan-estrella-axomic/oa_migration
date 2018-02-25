class Engineer < ApplicationRecord
	has_many :migrations
	has_many :clients, :through => :migrations
end
