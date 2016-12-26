class DescuentoAdicional < ActiveRecord::Base
  validates_presence_of :detalle	
  validates_numericality_of :descuento_adicional
end
