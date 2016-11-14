# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#asignacion_subcategorium_id').parent().hide()
	subcategorias = $('#asignacion_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#asignacion_subcategorium_id').parent().show()
			$('#asignacion_subcategorium_id').html(options)
		else
			$('#asignacion_subcategorium_id').empty()
			$('#asignacion_subcategorium_id').parent().hide()
	