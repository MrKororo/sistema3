class Liquidacion < ActiveRecord::Base
  belongs_to :asignacion
  belongs_to :habere
  belongs_to :bonificacion
  belongs_to :descuento_adicional
  belongs_to :personal

	#Validacion de cifras
	validates_numericality_of :liquido_pagar
	validates_numericality_of :desc_legales
	validates_numericality_of :desc_varios
	validates_numericality_of :total_haberes
	validates_numericality_of :descuento_afp
	validates_numericality_of :descuento_isapre
	validates_numericality_of :sindicato
	validates_numericality_of :impuesto
	validates_numericality_of :cotizacion_voluntaria
	validates_numericality_of :remuneracion
	validates_numericality_of :horas_trabajadas, :greater_than_or_equal_to => 50, :less_than_or_equal_to => 180, :message => "Cantidad de horas incorrecta"
	validates_numericality_of :horas_extra
	validates_numericality_of :vacaciones


end
