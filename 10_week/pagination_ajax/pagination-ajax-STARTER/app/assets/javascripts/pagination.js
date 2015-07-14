$(document).on('page:change', function(){
	$('.pagination a').on('click', function(){
		$.get(this.href, null, null, 'script');
		event.preventDefault();
	})
});