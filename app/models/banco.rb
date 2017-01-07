class Banco < ActiveRecord::Base
	has_many :personal, :dependent => :destroy	
	validates_presence_of :banco, :tipo_cuenta
	
	before_save do |bancos|
    	bancos.banco = bancos.banco.downcase.titleize
    end
	
  def bancoCuenta
  	"#{banco} (#{tipo_cuenta})"
  end
end
