class Empresa < ActiveRecord::Base
	validates_presence_of :nombre_empresa, :rut_empresa, :giro, :email, :telefono
	do_not_validate_attachment_file_type :image	 #No es seguro
	has_attached_file :image, :path => "/home/diego/sistema3/app/assets/images/:class/logo.jpg"


end
