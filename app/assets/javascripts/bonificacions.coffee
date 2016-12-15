# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#bonificacion_detalle_bono').prop("disabled",true)
	$('#bonificacion_bono').prop("disabled",true)
	$('#bonificacion_subcategorium_id').prop("disabled",true)
	subcategorias = $('#bonificacion_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#bonificacion_subcategorium_id').parent().show()
			$('#bonificacion_subcategorium_id').html(options)
			$('#bonificacion_subcategorium_id').prop("disabled",false)
			$('#bonificacion_detalle_bono').prop("disabled",false)
			$('#bonificacion_bono').prop("disabled",false)
		else
			$('#bonificacion_subcategorium_id').empty()
			$('#bonificacion_detalle_bono').prop("disabled",true)
			$('#bonificacion_bono').prop("disabled",true)
			$('#bonificacion_subcategorium_id').prop("disabled",true)
	