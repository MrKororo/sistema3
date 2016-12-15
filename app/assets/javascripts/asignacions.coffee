# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#asignacion_detalle_asignacion').prop("disabled",true)
	$('#asignacion_asignacion').prop("disabled",true)
	$('#asignacion_subcategorium_id').prop("disabled",true)
	subcategorias = $('#asignacion_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#asignacion_subcategorium_id').parent().show()
			$('#asignacion_subcategorium_id').html(options)
			$('#asignacion_detalle_asignacion').prop("disabled",false)
			$('#asignacion_asignacion').prop("disabled",false)
			$('#asignacion_subcategorium_id').prop("disabled",false)
		else
			$('#asignacion_subcategorium_id').empty()
			$('#asignacion_detalle_asignacion').prop("disabled",true)
			$('#asignacion_asignacion').prop("disabled",true)
			$('#asignacion_subcategorium_id').prop("disabled",true)
	