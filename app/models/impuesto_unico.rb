class ImpuestoUnico < ActiveRecord::Base
  validates_numericality_of :imponibleMinimo, :imponibleMaximo, :factor, :rebaja, :impuestoEfectivoMax
end
