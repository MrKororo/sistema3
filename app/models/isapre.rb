class Isapre < ActiveRecord::Base
	has_many :personal, :dependent => :destroy
	validates_presence_of :isapre
end
