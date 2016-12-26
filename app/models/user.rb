class User < ActiveRecord::Base
  has_secure_password
	validates_presence_of :nombre, :apellido_paterno, :apellido_materno, :tipo_usuario
  TIPOUSUARIO = ["Administrador","Empleado"]
end
