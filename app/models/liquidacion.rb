class Liquidacion < ActiveRecord::Base
  belongs_to :asignacion
  belongs_to :habere
  belongs_to :bonificacion
  belongs_to :descuento_adicional
  belongs_to :personal

  validates :personal_id, presence: true
  validates :habere_id, presence: true
  validates_numericality_of :horas_trabajadas, :greater_than_or_equal_to => 50, :less_than_or_equal_to => 180, :message => "cantidad de horas incorrecta"
  validates :remuneracion, presence: true
  validates :cantidad_horas_extra, presence: true
  validates :horas_extra, presence: true
  validates :asignacion_id, presence: true
  validates :bonificacion_id, presence: true
  validates :vacaciones, presence: true
  validates :total_imponible, presence: true
  validates :porcentaje_afp, presence: true
  validates :descuento_afp, presence: true
  validates :cotizacion_voluntaria, presence: true
  validates :descuento_isapre, presence: true
  
  validates :sindicato, presence: true
  validates :impuesto, presence: true
  
  validates :desc_legales, presence: true
  validates :desc_varios, presence: true
  validates :liquido_pagar, presence: true
  validates :fecha_pago, presence: true

  def self.search(start_period, end_period)
    fecha =start_period.split("/")
    fecha_cambiada= ("#{fecha[2]}-#{fecha[1]}-#{fecha[0]}")
    start_period=fecha_cambiada
    fecha2 =end_period.split("/")
    fecha2_cambiada= ("#{fecha2[2]}-#{fecha2[1]}-#{fecha2[0]}")
    end_period=fecha2_cambiada
    where("fecha_pago between ? and ?", "#{start_period}", "#{end_period}")
  end

end
