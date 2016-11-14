class Empresa < ActiveRecord::Base
	validates_presence_of :nombre_empresa, :rut_empresa, :giro, :email, :telefono
end
