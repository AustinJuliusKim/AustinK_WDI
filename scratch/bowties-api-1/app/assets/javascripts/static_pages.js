var API_BASE = '/api/bowties/';

function addBowtie(jqElem, data) {
	console.log(jqElem);
	console.log(data);

	var imageUrl = data.image_url;
	var description = data.description;
	var retailPrice = data.retail_price;

	var listItem = "<div class='bowtie-indiv'>";
	listItem += "<img src=' " + imageUrl + " ' width='150px' height='150px'>";
	listItem += "<p width='100px'>" + description + "</p>";
	listItem += "<strong class='price'>" + retailPrice.toString() + "</strong>";

	jqElem.append('<li>' + listItem + '</li>');
	console.log(listItem);
}

$(document).ready(function(){
	var json = $.ajax({
		datatype: 'json',
		type: 'GET',
		url: API_BASE,
		data: {}
	});

	console.log(json);

	json.done(function(data){
		var i;

		for(i=0; i<data.length;i+=1){
			// console.log(data[i]);
			addBowtie($('#bowties-list'), data[i]);
		} // end for
	}); // end json.done

	json.fail(function(data){
		$('#bowties').html("<h2>FAILED TO LOAD</h2>");
	}); // end json.fail


}); // end document ready