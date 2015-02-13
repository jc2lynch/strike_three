class League < ActiveRecord::Base
	has_many_and_belongs_to :users
  # has_many :picks
end
