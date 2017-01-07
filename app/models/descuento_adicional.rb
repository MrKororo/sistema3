class DescuentoAdicional < ActiveRecord::Base
	has_many :personal, :dependent => :destroy	
  #validates_presence_of :detalle	
 # validates_numericality_of :descuento_adicional
end
