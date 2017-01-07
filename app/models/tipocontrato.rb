class Tipocontrato < ActiveRecord::Base
	has_many :personal, :dependent => :destroy
	validates_presence_of :tipo_contrato
end
