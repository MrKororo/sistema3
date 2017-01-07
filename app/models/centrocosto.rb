class Centrocosto < ActiveRecord::Base
	has_many :personal, :dependent => :destroy
	validates_presence_of :nombre, :codigo, :detalle_centro

	before_save do |centros|
    	centros.nombre = centros.nombre.downcase.titleize
    end	
end
