class User < ActiveRecord::Base
  attr_accessible :email, :name, :miles

	validates :email, :presence => true
	validates :name, :presence => true
	
end
