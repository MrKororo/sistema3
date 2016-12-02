class Banco < ActiveRecord::Base
	validates_presence_of :banco, :tipo_cuenta
	
  def bancoCuenta
  	"#{banco} (#{tipo_cuenta})"
  	
  end
end
