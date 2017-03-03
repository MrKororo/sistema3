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
		if @liquidacion.asignacion.asignacion != 0
			as1="Asignacion"
			as2="$#{@liquidacion.asignacion.asignacion}"
		end
		if @liquidacion.bonificacion.bono != 0
			bon1="Bonificacion"
			bon2="$#{@liquidacion.bonificacion.bono}"
		end
		if @liquidacion.asignacion_familiar != 0
			fam1="Asig. Familiar"
			fam2="$#{@liquidacion.asignacion_familiar}"
		end
		if @liquidacion.horas_extra !=0
			ex1="Horas Extra"
			ex2="$#{@liquidacion.horas_extra}"
		end
		if @liquidacion.vacaciones!=0
			vac1="Vacaciones"
			vac2="$#{@liquidacion.vacaciones}"
		end
			table [["Haberes"],["Item","Detalle"],["Remuneracion #{@liquidacion.horas_trabajadas} horas", "$#{@liquidacion.remuneracion}"],[as1,as2],[bon1,bon2],[fam1, fam2],[ex1,ex2],[vac1,vac2]], :width => 250
	end
	 
	 def tabla_descuentos
	 	if @liquidacion.sindicato!=0
	 		sin1="Sindicato"
	 		sin2="$#{@liquidacion.sindicato}"
	 	end
	 	if @liquidacion.impuesto!=0
	 		imp1="Impuesto"
	 		imp2="$#{@liquidacion.impuesto}"
	 	end
	 	if @liquidacion.cotizacion_voluntaria !=0
	 		vol1="Ap. Voluntario"
	 		vol2="$#{@liquidacion.cotizacion_voluntaria}"
	 	end
	 	if @liquidacion.descuento_adicional.descuento_adicional!=0
	 		ad1="Descuento: #{@liquidacion.descuento_adicional.detalle}"
	 		ad2="$#{@liquidacion.descuento_adicional.descuento_adicional}"
	 	end
 		bounding_box([290, 485],:width => 250,:height => 600) do
	 		table [["Descuentos"],["Item","Detalle"],["Afp","$#{@liquidacion.descuento_afp}"],
	 				["Salud","$#{@liquidacion.descuento_isapre}"],[sin1,sin2],[imp1,imp2],[vol1,vol2],[ad1,ad2]], :width =>250
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