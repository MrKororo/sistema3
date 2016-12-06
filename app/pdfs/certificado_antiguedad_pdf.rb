class CertificadoAntiguedadPdf < Prawn::Document

 def initialize(certificadoAntiguedad)
	super(top_margin: 100)
		@empresa = Empresa.first
	    @certificados = certificadoAntiguedad
	    text "CERTIFICADO",:align => :center, :size =>17
	    text "\n "
	    text "\n "
		texto1
		text "\n "
		texto2
		image "/home/diego/sistema3/app/assets/images/empresas/logo", :at => [330, 80], :scale => 0.3
		
	    
  end
  def texto1
  	indent 40,40 do
  		text "Se certifica por el presente medio que don(a): #{@certificados.personal.nombre_apellido}, Rut: #{@certificados.personal.rut_personal}, trabaja para esta organizacion ejerciendo el cargo de: #{@certificados.personal.subcategorium.subcategoria} en la empresa: #{@empresa.nombre_empresa}, desde el #{@certificados.personal.created_at.strftime("%d/%m/%Y")} con #{@certificados.personal.tipocontrato.tipo_contrato}.", :align => :justify, :size =>12
  	end
  end

  def texto2
  	indent 40,40 do
	  	text "\nOtorgado a peticion del (la) interesado (a) para: #{@certificados.motivo}", :size =>12
  	end
  end  

end