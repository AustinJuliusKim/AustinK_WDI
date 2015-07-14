function initialize() {
	var mapOptions = {
		center: { 
			lat: 37 , 
			lng: -120 },
		zoom: 8
	};
	console.log("lat = " + mapOptions.center.lat);
	console.log("long = " + mapOptions.center.lng);
	var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);


