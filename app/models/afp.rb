class Afp < ActiveRecord::Base
	has_many :personal

	validates_presence_of :afp
	validates_presence_of :descuento_afp

	before_save do |afps|
    	afps.afp = afps.afp.downcase.titleize
    end
end