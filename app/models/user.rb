class User < ActiveRecord::Base
  has_secure_password

  TIPOUSUARIO = ["Administrador","Empleado"]
end
