window.onload = function() {
	console.log("Good morning!");

var lorem = document.getElementById("lorem");

lorem.addEventListener('click', function() {
	lorem.style.backgroundColor="green";
})// This ends the lorem style backgroundColor


var photo = document.getElementById("photo");

photo.addEventListener('mouseover', function() {
	photo.src = "http://fillmurray.com/g/200/200";
})// This ends the photo addEventListener function

photo.addEventListener('mouseout', function() {
	photo.src = "http://fillmurray.com/200/200";
})
//  This will change the photo back to src with mouse out

var username = document.getElementById('username');

username.addEventListener("focus", function(){
	username.style.backgroundColor = "teal";
})

};// This ends the onload function


var username = document.getElementById('username');

username.addEventListener("focus", function(){
	username.style.backgroundColor = "teal";
});
// when the input box is selected

username.addEventListener("blur", function(){
	username.style.backgroundColor = "white";
});
// when the input box is deselected