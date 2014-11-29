class Rant < ActiveRecord::Base
	has_many :comments
end
