class LiquidacionPdf < Prawn::Document
	def initialize(liquidacion)
		super(top_margin: 70)
			@liquidacion = liquidacion
			mes= Integer("#{@liquidacion.fecha_pago.strftime("%m")}")
			text "Liquidacion de remuneraciones:\n #{(I18n.t :month_names, :scope =>:date)[mes]} - #{@liquidacion.fecha_pago.strftime("%Y")}" ,:align => :center
			empresa_data
			text "\nDatos del trabajador: \n"
			personal_data
			text "\n "
			tabla_haberes
			tabla_descuentos
			tabla_resumen
			forma_pago
			image "/home/diego/sistema3/app/assets/images/empresas/logo", :at => [330, 80], :scale => 0.3
	end

	def empresa_data
		@empresa = Empresa.first
		table [["Empleador: #{@empresa.nombre_empresa} ","Giro: #{@empresa.giro}"],
			  ["Rut :#{@empresa.rut_empresa}","Domicilio: #{@empresa.domicilio}"]], :width => 540
	end

	def personal_data
		table [["Nombre: #{@liquidacion.personal.nombre_apellido}","Fecha ingreso: #{@liquidacion.personal.fecha_ingreso.strftime("%d/%m/%Y")}"],
	 		  ["Rut: #{@liquidacion.personal.rut_personal}","Cargo: #{@liquidacion.personal.subcategorium.subcategoria}"],
	 		  ["Afp: #{@liquidacion.personal.afp.afp}","Isapre: #{@liquidacion.personal.isapre.isapre}"]],:width =>540
	end

	def tabla_haberes
			table [["Haberes"],["Item","Detalle"],["Remuneracion #{@liquidacion.horas_trabajadas} horas", "$#{@liquidacion.remuneracion}"],["Asignacion","$#{@liquidacion.
	 		asignacion.asignacion}"],["Bonificacion","$#{@liquidacion.bonificacion.bono}"],["Asig. Familiar", "$#{@liquidacion.asignacion_familiar}"],["Horas Extra","$#{@liquidacion.horas_extra}"],
	 		["Vacaciones","$#{@liquidacion.vacaciones}"]], :width => 250
	end
	 
	 def tabla_descuentos
	 	if @liquidacion.sindicato == 0 and @liquidacion.impuesto ==0 and @liquidacion.cotizacion_voluntaria == 0  and @liquidacion.descuento_adicional==nil
	 		bounding_box([290, 485],:width => 250,:height => 600) do
	 		table [["Descuentos"],["Item","Detalle"],["Afp","$#{@liquidacion.descuento_afp}"],
	 				["Salud","$#{@liquidacion.descuento_isapre}"]], :width =>250
	 		end

	 	elsif @liquidacion.impuesto ==0 and @liquidacion.cotizacion_voluntaria == 0  and @liquidacion.descuento_adicional==nil
	 		bounding_box([290, 485],:width => 250,:height => 600) do
	 		table [["Descuentos"],["Item","Detalle"],["Afp","$#{@liquidacion.descuento_afp}"],
	 				["Salud","$#{@liquidacion.descuento_isapre}"],["Sindicato","$#{@liquidacion.sindicato}"]], :width =>250
	 		end
	 	elsif @liquidacion.cotizacion_voluntaria == 0  and @liquidacion.descuento_adicional==nil
	 		bounding_box([290, 485],:width => 250,:height => 600) do
	 		table [["Descuentos"],["Item","Detalle"],["Afp","$#{@liquidacion.descuento_afp}"],
	 				["Salud","$#{@liquidacion.descuento_isapre}"],["Sindicato","$#{@liquidacion.sindicato}"],
	 				["Impuesto","$#{@liquidacion.impuesto}"]], :width =>250
		 	end
		elsif @liquidacion.descuento_adicional==nil
			bounding_box([290, 485],:width => 250,:height => 600) do
	 		table [["Descuentos"],["Item","Detalle"],["Afp","$#{@liquidacion.descuento_afp}"],
	 				["Salud","$#{@liquidacion.descuento_isapre}"],["Sindicato","$#{@liquidacion.sindicato}"],
	 				["Impuesto","$#{@liquidacion.impuesto}"],["Ap. Voluntario","$#{@liquidacion.cotizacion_voluntaria}"]], :width=>250
	 		end
	 	else
	 		bounding_box([290, 485],:width => 250,:height => 600) do
	 		table [["Descuentos"],["Item","Detalle"],["Afp","$#{@liquidacion.descuento_afp}"],
	 				["Salud","$#{@liquidacion.descuento_isapre}"],["Sindicato","$#{@liquidacion.sindicato}"],
	 				["Impuesto","$#{@liquidacion.impuesto}"],["Ap. Voluntario","$#{@liquidacion.cotizacion_voluntaria}"],
	 				["Descuento: #{@liquidacion.descuento_adicional.detalle}","$#{@liquidacion.descuento_adicional.descuento_adicional}"]], :width =>250
	 		end
	 	end
	 end

	def tabla_resumen
		bounding_box([0,280],:width => 540,:height => 100)do
			table [["Total Haberes","Descuento Legal","Imponible","Descuentos Varios","Liquido a pagar"],
					["$#{@liquidacion.total_haberes}","$#{@liquidacion.desc_legales}","$#{@liquidacion.total_imponible}","$#{@liquidacion.desc_varios}","$#{@liquidacion.liquido_pagar}"]
					], :width =>540
		end
	end

	def forma_pago
		bounding_box([0,80],:width => 540,:height => 100)do
			table [["Forma de pago: #{@liquidacion.personal.banco.tipo_cuenta}"],["#{@liquidacion.personal.banco.banco}"],["Numero de cuenta: #{@liquidacion.personal.numero_cuenta}"]], :width =>300

		end

	end
end