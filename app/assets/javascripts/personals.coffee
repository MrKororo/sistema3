# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#personal_subcategorium_id').prop("disabled",true)
	$('#personal_tipocontrato_id').prop("disabled",true)
	$('#personal_centrocosto_id').prop("disabled",true)
	$('#personal_sindicato_id').prop("disabled",true)
	$('#personal_fecha_ingreso_3i').prop("disabled",true)
	$('#personal_fecha_ingreso_2i').prop("disabled",true)
	$('#personal_fecha_ingreso_1i').prop("disabled",true)
	subcategorias = $('#personal_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#personal_subcategorium_id').parent().show()
			$('#personal_subcategorium_id').html(options)
			$('#personal_subcategorium_id').prop("disabled",false)
			$('#personal_tipocontrato_id').prop("disabled",false)
			$('#personal_centrocosto_id').prop("disabled",false)
			$('#personal_sindicato_id').prop("disabled",false)
			$('#personal_fecha_ingreso_3i').prop("disabled",false)
			$('#personal_fecha_ingreso_2i').prop("disabled",false)
			$('#personal_fecha_ingreso_1i').prop("disabled",false)
		else
			$('#personal_subcategorium_id').empty()
			$('#personal_subcategorium_id').prop("disabled",true)
			$('#personal_tipocontrato_id').prop("disabled",true)
			$('#personal_centrocosto_id').prop("disabled",true)
			$('#personal_sindicato_id').prop("disabled",true)
			$('#personal_fecha_ingreso_3i').prop("disabled",true)
			$('#personal_fecha_ingreso_2i').prop("disabled",true)
			$('#personal_fecha_ingreso_1i').prop("disabled",true)