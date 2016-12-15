# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	
	$('#habere_sueldo_base').prop("disabled",true)
	$('#habere_horas_pactadas').prop("disabled",true)
	$('#habere_subcategorium_id').prop("disabled",true)
	subcategorias = $('#habere_subcategorium_id').html()
	$('#_categorium_id').change ->
		categoria = $('#_categorium_id :selected').text()
		options = $(subcategorias).filter("optgroup[label='#{categoria}']").html()
		if options
			$('#habere_subcategorium_id').parent().show()
			$('#habere_subcategorium_id').html(options)
			$('#habere_sueldo_base').prop("disabled", false)
			$('#habere_horas_pactadas').prop("disabled", false)
			$('#habere_subcategorium_id').prop("disabled",false)
		else
			$('#habere_subcategorium_id').empty()
			$('#habere_sueldo_base').prop("disabled",true)
			$('#habere_horas_pactadas').prop("disabled",true)
			$('#habere_subcategorium_id').prop("disabled",true)

	$('#habere_horas_pactadas').keyup ->
		horaspactada = $('#habere_horas_pactadas').val()
		sueldobase = $('#habere_sueldo_base').val()
		total = Math.round(sueldobase/horaspactada)
		$('#habere_valor_hora').val(total)

	$('#habere_sueldo_base').keyup ->
		horaspactada = $('#habere_horas_pactadas').val()
		sueldobase = $('#habere_sueldo_base').val()
		total = Math.round(sueldobase/horaspactada)
		$('#habere_valor_hora').val(total)