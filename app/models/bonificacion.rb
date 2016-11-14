class Bonificacion < ActiveRecord::Base
  belongs_to :subcategorium

  validates_presence_of :subcategorium_id, :bono, :detalle_bono
  validates_numericality_of :bono
end
