class TopesLegale < ActiveRecord::Base
	validates_presence_of :cantidad_uf, :detalle
	validates_numericality_of :topeMaximo
end
