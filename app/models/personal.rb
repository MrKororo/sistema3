class Personal < ActiveRecord::Base
  belongs_to :isapre
  belongs_to :banco
  belongs_to :subcategorium
  belongs_to :tipocontrato
  belongs_to :centrocosto
  belongs_to :afp
  belongs_to :sindicato
  belongs_to :certificate
  has_many :liquidacion, :dependent => :destroy

validates :rut_personal, rut: true, uniqueness: true

validates_presence_of :nombre_personal, :apellidop_personal, :apellidom_personal, :isapre_id, :banco_id, :subcategorium_id,
						:tipocontrato_id, :centrocosto_id, :afp_id, :fecha_ingreso, :sindicato, :cargas_familiar, :cotizacion_voluntaria,
            :descuento_isapre

searchable do
	text :nombre_personal, :apellidop_personal, :apellidom_personal, :rut_personal
end

def nombre_apellido
	"#{nombre_personal} #{apellidop_personal} #{apellidom_personal}"
end

end
