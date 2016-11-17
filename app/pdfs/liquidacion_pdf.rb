class LiquidacionPdf < Prawn::Document
	def initialize(liquidacion)
		super(top_margin: 70)
			text "Liquidacion de remuneraciones\n #{DateTime.now.to_date.strftime("%d/%m/%Y")}" ,:align => :center
			@liquidacion = liquidacion
			empresa_data
			text "\nDatos del trabajador: \n"
			personal_data
			text "\n "
			tabla_haberes
			tabla_descuentos
			tabla_resumen
			forma_pago

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
	 		asignacion.asignacion}"],["Bonificacion","$#{@liquidacion.bonificacion.bono}"],["Horas Extra","$#{@liquidacion.horas_extra}"],
	 		["Vacaciones","$#{@liquidacion.vacaciones}"]], :width => 250
	end
	 
	 def tabla_descuentos
	 	bounding_box([290, 485],:width => 250,:height => 600) do
	 		table [["Descuentos"],["Item","Detalle"],["Afp","$#{@liquidacion.descuento_afp}"],
	 				["Salud","$#{@liquidacion.descuento_isapre}"],["Sindicato","$#{@liquidacion.sindicato}"],
	 				["Impuesto","$#{@liquidacion.impuesto}"],["Ap. Voluntario","$#{@liquidacion.cotizacion_voluntaria}"],
	 				["Descuento: #{@liquidacion.descuento_adicional.detalle}","$#{@liquidacion.descuento_adicional.descuento_adicional}"]], :width =>250
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