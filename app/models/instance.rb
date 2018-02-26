class Instance < ApplicationRecord
	belongs_to :client


	# ID

	scope :id_equal, lambda { |query|
		where(["id=?", "#{query.to_i}"])
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

	scope :order_by_id_desc, lambda {
		order("id DESC")
	}

	scope :order_by_id_asc, lambda {
		order("id ASC")
	}

	# URL

	scope :url_equal, lambda { |query|
		where(["url=?", "#{query}"])
	}

	scope :url_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["url in (?)", "#{arg}"])
	}

	scope :url_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["url not in (?)", "#{arg}"])
	}

	scope :order_by_url_asc, lambda {
		order("url ASC")
	}

	scope :order_by_url_desc, lambda {
		order("url DESC")
	}


	# Token
	scope :token_equal, lambda { |query|
		where(["token=?", "#{query}"])
	}

	scope :token_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["token in (?)", "#{arg}"])
	}

	scope :token_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["token not in (?)", "#{arg}"])
	}

	# Session
	scope :session_equal, lambda { |query|
		where(["token=?", "#{query}"])
	}

	scope :session_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["token in (?)", "#{arg}"])
	}

	scope :session_not_in, lambda { |arg|
		arg = arg.keys.map { |k| arg[k] }.join(',') if arg.is_a?(Hash)
		arg = arg.join(',') if arg.is_a?(Array)
	  	where(["token not in (?)", "#{arg}"])
	}


end
