class Rant < ActiveRecord::Base
	has_many :comments 
	
	acts_as_taggable
end
