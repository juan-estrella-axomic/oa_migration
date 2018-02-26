class Engineer < ApplicationRecord
	has_many :migrations
	has_many :clients, :through => :migrations


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
		order(["id ASC"])
	}

	scope :order_by_id_desc, lambda {
		order(["id DESC"])
	}

	# First Name

	scope :first_name_equals, lamda { |query|
		where(["name=?", "#{query}"])
	}

	scope :first_name_like, lambda { |query|
		where(["name LIKE ?", "%#{query}%"])
	}

	scope :first_name_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a(Array)
	  	where(["name in (?)", arg])
	}

	scope :first_name_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a(Array)
	  	where(["name not in (?)", arg])
	}

	scope :order_by_first_name_asc, lambda {
		order(["first_name ASC"])
	}

	scope :order_by_first_name_desc, lambda {
		order(["first_name DESC"])
	}


	# Last Name

	scope :last_name_equals, lamda { |query|
		where(["last_name=?", "#{query}"])
	}

	scope :last_name_like, lambda { |query|
		where(["last_name LIKE ?", "%#{query}%"])
	}

	scope :last_name_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a(Array)
	  	where(["last_name in (?)", arg])
	}

	scope :last_name_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a(Array)
	  	where(["last_name not in (?)", arg])
	}

	scope :order_by_last_name_asc, lambda {
		order("last_name ASC")
	}

	scope :order_by_last_name_desc, lambda {
		order("last_name DESC")
	}

end
