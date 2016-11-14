class Asignacion < ActiveRecord::Base
  belongs_to :subcategorium

  validates_presence_of :subcategorium_id, :asignacion, :detalle_asignacion
  validates_numericality_of :asignacion
end
