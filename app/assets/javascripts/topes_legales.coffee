# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


	$('#topes_legale_cantidad_uf').keyup ->
		valorUF = $('#indicador_economico_valor_uf').val()
		cantidadUF = $('#topes_legale_cantidad_uf').val()
		resultado = Math.round(valorUF*cantidadUF)
		$('#topes_legale_topeMaximo').val(resultado)
