$(function() {
		$('#turtle-table thead tr').css('background-color', 'lime');
		// $('#turtle-table tbody tr').eq(0).css('background-color', 'violet');
		// $('#turtle-table tbody tr').eq(1).css('background-color', 'blue');
		// $('#turtle-table tbody tr').eq(2).css('background-color', 'red');
		// $('#turtle-table tbody tr').eq(3).css('background-color', 'orange');

		$('#turtle-table tbody tr:odd').addClass('zebra');

		// $('#turtle-table tbody tr').eq(0).addClass('zebra');
		// $('#turtle-table tbody tr').eq(2).addClass('zebra');


		$('#disclaimer').on('click',function(){
			$(this).hide(200);
	
		});

		$('<button>Show Disclaimer</button>').insertBefore('#disclaimer')


		$('button').click(function()
			{$('#disclaimer').show('fast')
		});
});