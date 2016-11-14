class Centrocosto < ActiveRecord::Base
	validates_presence_of :nombre, :codigo, :detalle_centro
end
