$(document).ready(function(){
	// this is the URL that we're going to request JSON from
	var API_BASE = '/api/bowties';

	function addBowTie(jqElem, data){
		var imageUrl = data.image_url;
		var description = data.pattern;
		var retailPrice = data.retail_price;


		var listItem ="<div class='bowtie-indiv'>";
		listItem += "<img src=' " +imageUrl + " ' width='150px' height='150px'>";
		listItem += "<p width='100px'>" + description +"</p>";
		listItem += "<strong class='price'>" + retailPxrice.toString() + "</strong>";
 
		jqElem.append("<li>" + listItem + "</li>");
		console.log(listItem);

 	};
	// the response from the server will be saved to this variable
	var json = $.ajax({
		datatype: 'json',
		type: 'GET',
		url: API_BASE,
		data: {}
	});
	 // end json variable
	 // console.log(json);

	 // when the response from the server is done, this is what we want to do with it
	 json.done(function(data){
	 	var i;

	 	for (i = 0; i < data.length; i+=1){
	 		console.log(data[i]);
	 		addBowTie( $('#bowties-list'), data[i]); //takes two parameters: the first being the dom element we want to add, and the data
	 	}; // end for loop
	 }); // end json.done function

	 // if the request fails, this is what we want to do with it
	 json.fail(function(data){
	 	$('#bowties').html("<h2>FAILED TO LOAD</h2>");
	 });
});

