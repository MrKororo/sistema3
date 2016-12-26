class Sindicato < ActiveRecord::Base
	
	validates_presence_of :nombre_sindicato
	validates_numericality_of :cuota_sindical

end
