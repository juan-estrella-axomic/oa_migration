class Migration < ApplicationRecord
	belongs_to :engineer
	belongs_to :client
end
