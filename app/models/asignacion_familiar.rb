class AsignacionFamiliar < ActiveRecord::Base
	validates_presence_of :tramo
	validates_numericality_of :monto, :requisitoMinimo, :requisitoMaximo
end
