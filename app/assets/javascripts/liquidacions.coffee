jQuery ->
#Seleccion de categoria, en caso de no pillar subcategorias se bloquean las opciones
	$('#_subcategorium_id').prop("disabled",true)
	$('#liquidacion_personal_id').prop("disabled",true)
	$('#liquidacion_habere_id').prop("disabled",true)
	$('#liquidacion_horas_trabajadas').prop("disabled",true)
	$('#liquidacion_cantidad_horas_extra').prop("disabled",true)
	subcategorias = $('#_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#_subcategorium_id').parent().show()
			$('#_subcategorium_id').html(options)
			$('#_subcategorium_id').prop("disabled",false)
			$('#liquidacion_personal_id').prop("disabled",false)
			$('#liquidacion_habere_id').prop("disabled",false)
			$('#liquidacion_horas_trabajadas').prop("disabled",false)
			$('#liquidacion_cantidad_horas_extra').prop("disabled",false)
			personals = $('#liquidacion_personal_id').html()
			$('#_categorium_id').change ->
				subcategoria = $('#_subcategorium_id :selected').text()
				options2 = $(personals).filter("optgroup[label='#{subcategoria}']").html()
				if options2
					$('#liquidacion_personal_id').html(options2)
		else
			$('#_subcategorium_id').empty()			
			$('#liquidacion_personal_id').empty()
			$('#liquidacion_habere_id').empty()
			$('#_subcategorium_id').prop("disabled",true)
			$('#liquidacion_personal_id').prop("disabled",true)
			$('#liquidacion_habere_id').prop("disabled",true)
			$('#liquidacion_horas_trabajadas').prop("disabled",true)
			$('#liquidacion_cantidad_horas_extra').prop("disabled",true)
#fin del bloque

#busqueda de personal por subcategoria
	personals = $('#liquidacion_personal_id').html()
	$('#_subcategorium_id').change ->
		subcategoria = $('#_subcategorium_id :selected').text()
		options = $(personals).filter("optgroup[label='#{subcategoria}']").html()
		if options
			$('#liquidacion_personal_id').html(options)
		else
			$('#liquidacion_personal_id').empty()
#fin del bloque
		
#busqueda del valor por hora en habere
	haberes = $('#liquidacion_habere_id').html()
	$('#_subcategorium_id').change ->
		asignacion = $('#_subcategorium_id :selected').text()
		options2 = $(haberes).filter("optgroup[label='#{asignacion}']").html()
		if options2
			$('#liquidacion_habere_id').parent().show()
			$('#liquidacion_habere_id').html(options2)
		else
			$('#liquidacion_habere_id').empty()
#fin del bloque

#ingreso de la cantidad de horas reportadas como trabajadas y remuneracion en base
	$('#liquidacion_horas_trabajadas').keyup ->
		sueldo = parseInt($('#liquidacion_habere_id option:selected').text())
		hora = $('#liquidacion_horas_trabajadas').val()
		total= Math.round(sueldo*hora)
		$('#liquidacion_remuneracion').val(total)
#fin del bloque

#busqueda de las asignaciones por subcategoria
	asignacions = $('#liquidacion_asignacion_id').html()
	$('#_subcategorium_id').change ->
		asignacion = $('#_subcategorium_id :selected').text()
		options3 = $(asignacions).filter("optgroup[label='#{asignacion}']").html()
		if options3 
			$('#liquidacion_asignacion_id').parent().show()
			$('#liquidacion_asignacion_id').html(options3)
		else
			$('#liquidacion_asignacion_id').empty()
#fin del bloque

#busqueda de bonificaciones por subcategoria
	bonificacions = $('#liquidacion_bonificacion_id').html()
	$('#_subcategorium_id').change ->
		asignacion = $('#_subcategorium_id :selected').text()
		options4 = $(bonificacions).filter("optgroup[label='#{asignacion}']").html()
		if options4
			$('#liquidacion_bonificacion_id').parent().show()
			$('#liquidacion_bonificacion_id').html(options4)
		else
			$('#liquidacion_bonificacion_id').empty()
#fin del bloque

#bloque para cantidad de horas extra y valor final
	$('#liquidacion_cantidad_horas_extra').keyup ->
		cantidad_hora= $('#liquidacion_cantidad_horas_extra').val()
		sueldo = parseInt($('#liquidacion_habere_id option:selected').text())*1.5
		total = Math.round(cantidad_hora*sueldo)
		$('#liquidacion_horas_extra').val(total)
#fin del bloque		

#calculo de imponible y total
	$('#calculoHaberes').click ->
		remuneracion = parseInt($('#liquidacion_remuneracion').val())
		hextra = parseInt($('#liquidacion_horas_extra').val())
		asig = parseInt($('#liquidacion_asignacion_id option:selected').text())
		bono = parseInt($('#liquidacion_bonificacion_id option:selected').text())
		vaca = parseInt($('#liquidacion_vacaciones').val())
		imponible= remuneracion+hextra+bono
		total = imponible+vaca+asig
		$('#liquidacion_total_imponible').val(imponible)
		$('#liquidacion_total_haberes').val(total)
#fin del bloque

#porcentajes AFP e Isapre
	$("#_afp_id").change ->
		$("#_afp_id option:selected").map ->
			$("#liquidacion_porcentaje_afp").val($(this).val())
			
	$('#_afp_id').change ->
		totalSueldo = $('#liquidacion_total_imponible').val()
		porcentaje = $('#liquidacion_porcentaje_afp').val()/100
		descuento = Math.round(totalSueldo*porcentaje)
		$('#liquidacion_descuento_afp').val(descuento)
#fin del bloque	

#cargas familiares
	$('#_cargas_familiar').change ->
		imponible = parseInt($('#liquidacion_total_imponible').val())
		haberes = parseInt($('#liquidacion_total_haberes').val())
		num =parseInt($('#_cargas_familiar option:selected').val())
		asig1=parseInt($('#asignacion1').val())
		asig2= parseInt($('#asignacion2').val())
		asig3= parseInt($('#asignacion3').val())
		if (imponible<asig1)
			total= num*$('#monto1').val()
			$('#liquidacion_asignacion_familiar').val(total)
		if (imponible>asig1 && imponible<asig2)
			total= num*$('#monto2').val()
			$('#liquidacion_asignacion_familiar').val(total)
		if (imponible>asig2 && imponible<asig3)
			total= num*$('#monto3').val()
			$('#liquidacion_asignacion_familiar').val(total)			
		if (imponible>asig3)
			total= num*$('#monto4').val()
			$('#liquidacion_asignacion_familiar').val(total)
		if ($('#numeroCargas').val() == 0)			
			$('#liquidacion_asignacion_familiar').val(0)
#fin del bloque

#Remuneración líquida imponible * factor - descuento = Impuesto a pagar
#impuesto
	$('#impuesto').click ->
		imponible = parseInt($('#liquidacion_total_imponible').val())
		imp1= parseInt($('#impuesto1').val())
		imp2= parseInt($('#impuesto2').val())
		imp3= parseInt($('#impuesto3').val())
		imp4= parseInt($('#impuesto4').val())
		imp5= parseInt($('#impuesto5').val())
		imp6= parseInt($('#impuesto6').val())
		imp7= parseInt($('#impuesto7').val())
		reb2= parseInt($('#rebaja2').val())
		reb3= parseInt($('#rebaja3').val())
		reb4= parseInt($('#rebaja4').val())
		reb5= parseInt($('#rebaja5').val())
		reb6= parseInt($('#rebaja6').val())
		reb7= parseInt($('#rebaja7').val())
		reb8= parseInt($('#rebaja8').val())
		if (imponible<imp1)
			$('#liquidacion_impuesto').val(0)
		if (imponible>imp1 && imponible<imp2)
			total=Math.round(imponible*$('#factor2').val()-reb2)
			$('#liquidacion_impuesto').val(total)
		if (imponible>imp2 && imponible<imp3)
			total=Math.round(imponible*$('#factor3').val()-reb3)
			$('#liquidacion_impuesto').val(total)		
		if (imponible>imp3 && imponible<imp4)
			total=Math.round(imponible*$('#factor4').val()-reb4)
			$('#liquidacion_impuesto').val(total)		
		if (imponible>imp4 && imponible<imp5)
			total=Math.round(imponible*$('#factor5').val()-reb5)
			$('#liquidacion_impuesto').val(total)			
		if (imponible>imp5 && imponible<imp6)
			total=Math.round(imponible*$('#factor6').val()-reb6)
			$('#liquidacion_impuesto').val(total)			
		if (imponible>imp6 && imponible<imp7)
			total=Math.round(imponible*$('#factor7').val()-reb7)
			$('#liquidacion_impuesto').val(total)
		if (imponible>imp7)
			total=Math.round(imponible*$('#factor8').val()-reb8)
			$('#liquidacion_impuesto').val(total)			
#fin del bloque

	$('#coffeeScript').click ->
		afp= parseInt($('#liquidacion_descuento_afp').val())
		isapre = parseInt($('#liquidacion_descuento_isapre option:selected').val())
		apv= parseInt($('#liquidacion_cotizacion_voluntaria option:selected').val())
		asgFam= parseInt($('#liquidacion_asignacion_familiar').val())
		sindicato = parseInt($('#liquidacion_sindicato option:selected').val())
		imp= parseInt($('#liquidacion_impuesto').val())
		desAdi = parseInt($('#liquidacion_descuento_adicional_id option:selected').text())
		thabere= parseInt($('#liquidacion_total_haberes').val())
		if isNaN(desAdi)
			varios= apv+sindicato+imp
		else
			varios= apv+sindicato+imp+desAdi
		legal= afp+isapre
		desc=varios+legal
		liquido=thabere+asgFam-desc
		$('#liquidacion_desc_legales').val(legal)
		$('#liquidacion_desc_varios').val(varios)
		$('#liquidacion_liquido_pagar').val(liquido)