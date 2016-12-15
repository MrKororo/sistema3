jQuery ->


#busqueda de personal por subcategoria
	personals = $('#liquidacion_personal_id').html()
	$('#_subcategorium_id').change ->
		subcategoria = $('#_subcategorium_id :selected').text()
		options = $(personals).filter("optgroup[label='#{subcategoria}']").html()
		if options
			$('#liquidacion_personal_id').parent().show()
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

#total de haberes en base a los valores de remuneracion, asignacion y bonificacion
	$('#liquidacion_horas_trabajadas').keyup ->
		total_extra = parseInt($('#liquidacion_horas_extra').val())
		sueldo = parseInt($('#liquidacion_remuneracion').val())
		asignacion = parseInt($('#liquidacion_asignacion_id option:selected').text())
		bono = parseInt($('#liquidacion_bonificacion_id option:selected').text())
		if isNaN(asignacion) and isNaN(bono)
			$('#liquidacion_total_haberes').val(sueldo)
		else if isNaN(asignacion)
			total = sueldo+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
		else
			total = sueldo+asignacion+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
#fin del bloque

#total de haberes en base a los valores de remuneracion, asignacion y bonificacion
	$('#liquidacion_bonificacion_id').change ->
		total_extra = parseInt($('#liquidacion_horas_extra').val())
		sueldo = parseInt($('#liquidacion_remuneracion').val())
		asignacion = parseInt($('#liquidacion_asignacion_id option:selected').text())
		bono = parseInt($('#liquidacion_bonificacion_id option:selected').text())
		if isNaN(bono) && isNaN(asignacion)
			$('#liquidacion_total_haberes').val(sueldo)
		else if isNaN(bono)
			total = sueldo+asignacion+total_extra
			$('#liquidacion_total_haberes').val(total)
		else if isNaN(asignacion)
			total = sueldo+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
		else
			total = sueldo+asignacion+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
#fin del bloque

#total de haberes en base a los valores de remuneracion, asignacion y bonificacion
	$('#liquidacion_asignacion_id').change ->
		total_extra = parseInt($('#liquidacion_horas_extra').val())
		sueldo = parseInt($('#liquidacion_remuneracion').val())
		asignacion = parseInt($('#liquidacion_asignacion_id option:selected').text())
		bono = parseInt($('#liquidacion_bonificacion_id option:selected').text())
		if isNaN(bono) && isNaN(asignacion)
			$('#liquidacion_total_haberes').val(sueldo)
		else if isNaN(asignacion)
			total = sueldo+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
		else if isNaN(bono)
			total = sueldo+asignacion+total_extra
			$('#liquidacion_total_haberes').val(total)
		else
			total = sueldo+asignacion+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
#fin del bloque

#total imponible
	$('#liquidacion_bonificacion_id').change ->
		sueldo = parseInt($('#liquidacion_remuneracion').val())
		horas = parseInt($('#liquidacion_horas_extra').val())
		bono = parseInt($('#liquidacion_bonificacion_id option:selected').text())
		if isNaN(bono)
			total = Math.round(sueldo+horas)
			$('#liquidacion_total_imponible').val(total)
		else
			total = Math.round(sueldo+horas+bono)
			$('#liquidacion_total_imponible').val(total)

	$('#liquidacion_cantidad_horas_extra').keyup ->
		sueldo = parseInt($('#liquidacion_remuneracion').val())
		horas = parseInt($('#liquidacion_horas_extra').val())
		bono = parseInt($('#liquidacion_bonificacion_id option:selected').text())
		if isNaN(bono)
			total = Math.round(sueldo+horas)
			$('#liquidacion_total_imponible').val(total)
		else
			total = Math.round(sueldo+horas+bono)
			$('#liquidacion_total_imponible').val(total)
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


	$('#liquidacion_descuento_isapre').keyup ->
		afp = parseInt($('#liquidacion_descuento_afp').val())
		isapre = parseInt($('#liquidacion_descuento_isapre').val())
		total = Math.round(afp+isapre)
		$('#liquidacion_desc_legales').val(total)


#fin del bloque

# bloque de control de sindicato, impuesto, cotizacion voluntaria y desc adicional
	$('#liquidacion_descuento_adicional_id').change ->
		desAdicional = parseInt($('#liquidacion_descuento_adicional_id option:selected').text())
		impuesto = parseInt($('#liquidacion_impuesto').val())
		sindicato = parseInt($('#liquidacion_sindicato option:selected').val())
		cotVol = parseInt($('#liquidacion_cotizacion_voluntaria').val())
		if isNaN(desAdicional)
			total= Math.round(impuesto+sindicato+cotVol)
			$('#liquidacion_desc_varios').val(total)
		else
			total= Math.round(impuesto+sindicato+cotVol+desAdicional)
			$('#liquidacion_desc_varios').val(total)

	$('#liquidacion_sindicato').change ->
		desAdicional = parseInt($('#liquidacion_descuento_adicional_id option:selected').text())
		impuesto = parseInt($('#liquidacion_impuesto').val())
		sindicato = parseInt($('#liquidacion_sindicato option:selected').val())
		cotVol = parseInt($('#liquidacion_cotizacion_voluntaria').val())
		if isNaN(desAdicional)
			total= Math.round(impuesto+sindicato+cotVol)
			$('#liquidacion_desc_varios').val(total)
		else
			total= Math.round(impuesto+sindicato+cotVol+desAdicional)
			$('#liquidacion_desc_varios').val(total)

	$('#liquidacion_impuesto').keyup ->
		desAdicional = parseInt($('#liquidacion_descuento_adicional_id option:selected').text())
		impuesto = parseInt($('#liquidacion_impuesto').val())
		sindicato = parseInt($('#liquidacion_sindicato option:selected').val())
		cotVol = parseInt($('#liquidacion_cotizacion_voluntaria').val())
		if isNaN(desAdicional)
			total= Math.round(impuesto+sindicato+cotVol)
			$('#liquidacion_desc_varios').val(total)
		else
			total= Math.round(impuesto+sindicato+cotVol+desAdicional)
			$('#liquidacion_desc_varios').val(total)

	$('#liquidacion_cotizacion_voluntaria').keyup ->
		desAdicional = parseInt($('#liquidacion_descuento_adicional_id option:selected').text())
		impuesto = parseInt($('#liquidacion_impuesto').val())
		sindicato = parseInt($('#liquidacion_sindicato option:selected').val())
		cotVol = parseInt($('#liquidacion_cotizacion_voluntaria').val())
		if isNaN(desAdicional)
			total= Math.round(impuesto+sindicato+cotVol)
			$('#liquidacion_desc_varios').val(total)
		else
			total= Math.round(impuesto+sindicato+cotVol+desAdicional)
			$('#liquidacion_desc_varios').val(total)
#fin del bloque

#bloque para cantidad de horas extra y valor final
	$('#liquidacion_cantidad_horas_extra').keyup ->
		cantidad_hora= $('#liquidacion_cantidad_horas_extra').val()
		sueldo = parseInt($('#liquidacion_habere_id option:selected').text())*1.5
		total = Math.round(cantidad_hora*sueldo)
		$('#liquidacion_horas_extra').val(total)

	$('#liquidacion_cantidad_horas_extra').keyup ->
		total_extra = parseInt($('#liquidacion_horas_extra').val())
		haberes = $('#liquidacion_remuneracion').val()		
		sueldo = parseInt($('#liquidacion_remuneracion').val())
		asignacion = parseInt($('#liquidacion_asignacion_id option:selected').text())
		bono = parseInt($('#liquidacion_bonificacion_id option:selected').text())
		if isNaN(bono) && isNaN(asignacion)
			$('#liquidacion_total_haberes').val(sueldo)
		else if isNaN(asignacion)
			total = sueldo+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
		else if isNaN(bono)
			total = sueldo+asignacion+total_extra
			$('#liquidacion_total_haberes').val(total)
		else
			total = sueldo+asignacion+bono+total_extra
			$('#liquidacion_total_haberes').val(total)
#fin del bloque

#calculo de remuneracion liquida
	$('#coffeeScript').click ->
		haberes= parseInt($('#liquidacion_total_haberes').val())
		desLegal = parseInt($('#liquidacion_desc_legales').val())
		desVarios = parseInt($('#liquidacion_desc_varios').val())
		vacacion = parseInt($('#liquidacion_vacaciones').val())
		total = haberes+vacacion
		total2= desLegal+desVarios
		final=total-total2
		$('#liquidacion_liquido_pagar').val(final)
#final del bloque# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/