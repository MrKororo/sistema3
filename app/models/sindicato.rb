class Sindicato < ActiveRecord::Base
	has_many :personal, :dependent => :destroy
	
	validates_presence_of :nombre_sindicato
	validates_numericality_of :cuota_sindical

end
