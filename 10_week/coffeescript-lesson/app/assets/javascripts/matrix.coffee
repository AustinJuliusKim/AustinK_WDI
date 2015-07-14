url = "http://glenndama.herokuapp.com/api/quotes"
$(document).ready ->
	$.get url
	.success (data) ->
		console.log "called from CoffeeScript"
		console.log data
		$("section#api").text(data.text)
	.error (data) -> 
		console.log "error"