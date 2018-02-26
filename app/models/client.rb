class Client < ApplicationRecord
	has_many :instances
	has_many :migrations
	has_many :engineers, :through => :migrations

	# ID

	scope :id_equals, lambda { |arg|
		where(["id=?", "#{arg.to_i}"])
	}

	scope :id_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["id in (?)", "#{arg}"])
	}

	scope :id_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["id not in (?)", "#{arg}"])
	}

	scope :id_between, lambda { |arg1,arg2|
		where(["id between ? and ?", arg1.to_i, arg2.to_i])
	}

	scope :id_greater_than, lambda { |query|
		where(["id > ?", "#{query.to_i}"])
	}

	scope :id_less_than, lambda { |query|
		where(["id < ?", "#{query.to_i}"])
	}

	scope :order_by_id_asc, lambda {
		order("id ASC")
	}

	scope :order_by_id_desc, lambda {
		order("id DESC")
	}

	# Name

	scope :name_equals, lamda { |query|
		where(["name=?", "#{query}"])
	}

	scope :name_like, lambda { |query|
		where(["name LIKE ?", "%#{query}%"])
	}

	scope :name_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a(Array)
	  	where(["name in (?)", arg])
	}

	scope :order_by_name_asc, lambda {
		order("name ASC")
	}

	scope :order_by_name_desc, lambda {
		order("name DESC")
	}

end
