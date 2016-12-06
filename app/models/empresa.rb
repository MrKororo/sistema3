class Empresa < ActiveRecord::Base
	validates_presence_of :nombre_empresa, :rut_empresa, :giro, :email, :telefono

	has_attached_file :image, :path => "/home/diego/sistema3/app/assets/images/:class/:basename"
	validates_attachment :image, content_type: { content_type: ["image/jpeg"] }

before_save :basename



  def basename
    extension = File.extname(image_file_name).downcase
  	self.image_file_name= "logo#{extension}"
  end

end
