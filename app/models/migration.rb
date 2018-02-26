class Migration < ApplicationRecord
	belongs_to :engineer
	belongs_to :client

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


	# Engineer

	scope :engineer_id_equals, lambda { |query|
		where(["engineer_id=?", "#{query.to_i}"])
	}

	scope :engineer_id_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["engineer_id in (?)", "#{arg}"])
	}

	scope :engineer_id_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["engineer_id not in (?)", "#{arg}"])
	}

	scope :engineer_id_between, lambda { |arg1,arg2|
		where(["engineer_id between ? and ?", arg1.to_i, arg2.to_i])
	}

	scope :engineer_id_greater_than, lambda { |query|
		where(["engineer_id > ?", "#{query.to_i}"])
	}

	scope :engineer_id_less_than, lambda { |query|
		where(["engineer_id < ?", "#{query.to_i}"])
	}


	# Client

	scope :client_id_equals, lambda { |query|
		where(["client_id=?", "#{query.to_i}"])
	}

	scope :client_id_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["client_id in (?)", "#{arg}"])
	}

	scope :client_id_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["client_id not in (?)", "#{arg}"])
	}

	scope :client_id_between, lambda { |arg1,arg2|
		where(["client_id between ? and ?", arg1.to_i, arg2.to_i])
	}

	scope :client_id_greater_than, lambda { |query|
		where(["client_id > ?", "#{query.to_i}"])
	}

	scope :client_id_less_than, lambda { |query|
		where(["client_id < ?", "#{query.to_i}"])
	}


	# File Count

	scope :file_count_equals, lambda { |query|
		where(["file_count=?", "#{query.to_i}"])
	}

	scope :file_count_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["file_count in (?)", "#{arg}"])
	}

	scope :file_count_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["file_count not in (?)", "#{arg}"])
	}

	scope :file_count_between, lambda { |arg1,arg2|
		where(["file_count between ? and ?", arg1.to_i, arg2.to_i])
	}

	scope :file_count_greater_than, lambda { |query|
		where(["file_count > ?", "#{query.to_i}"])
	}

	scope :file_count_less_than, lambda { |query|
		where(["file_count < ?", "#{query.to_i}"])
	}


	# Elapsed Time

	scope :elapsed_time_equal, lambda { |query|
		where(["elapsed_time=?", "#{query.to_i}"])
	}

	scope :elapsed_time_between, lambda { |arg1,arg2|
		where(["elapsed_time between ? and ?", arg1.to_i, arg2.to_i])
	}

	scope :elapsed_time_greater_than, lambda { |query|
		where(["elapsed > ?", "#{query.to_i}"])
	}

	scope :file_count_less_than, lambda { |query|
		where(["file_count < ?", "#{query.to_i}"])
	}
end
