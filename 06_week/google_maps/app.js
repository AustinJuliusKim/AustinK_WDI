function initialize() {

}

var mapProperties = {
	center: new google.maps.LatLng(34.0129821, -118.495196),
	zoom: 17,
	mapTypeId: google.maps.MapTypeId.roadmap
}

google.maps.event.addDomListener(window, 'load', initialize);

//adds a marker
var marker=new google.maps.Marker({
	postiion:myCenter,
	animation:google.map.Animation.BOUNCE, // animates the marker
	icon:'pinkball.png' // replace default marker with custom icon
}),
marker.setMap(map);

var infowindow = new google.maps.InfoWindow({
	content:"Hello World!"
});
infowindow.open(map,marker);

var myTrip = [stavanger,amsterdam,london];
var flightPath = new google.maps.Polyline({
  path:myTrip,
  strokeColor:"#0000FF",
  strokeOpacity:0.8,
  strokeWeight:2
});

// Zoom to 9 when clicking on marker
google.maps.event.addListener(marker,'click',function() {
  map.setZoom(9);
  map.setCenter(marker.getPosition());
  });

 // Open an InfoWindow when clicking on the marker
  var infowindow = new google.maps.InfoWindow({
  content:"Hello World!"
  });
 
 //Set markers and open InfoWindow for each marker
google.maps.event.addListener(marker, 'click', function() {
  infowindow.open(map,marker);
  });


google.maps.event.addListener(map, 'click', function(event) {
  placeMarker(event.latLng);
  });

function placeMarker(location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map,
  });
  var infowindow = new google.maps.InfoWindow({
    content: 'Latitude: ' + location.lat() +
    '<br>Longitude: ' + location.lng()
  });
  infowindow.open(map,marker);
}