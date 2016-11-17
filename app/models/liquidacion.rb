class Liquidacion < ActiveRecord::Base
  belongs_to :asignacion
  belongs_to :habere
  belongs_to :bonificacion
  belongs_to :descuento_adicional
  belongs_to :personal
end
