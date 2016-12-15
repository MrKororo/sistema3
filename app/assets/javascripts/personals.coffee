# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	
	subcategorias = $('#personal_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#personal_subcategorium_id').parent().show()
			$('#personal_subcategorium_id').html(options)
		else
			$('#personal_subcategorium_id').empty()