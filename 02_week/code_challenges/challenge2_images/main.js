var photos = ['http://fillmurray.com/200/200', 'http://fillmurray.com/200/300','http://fillmurray.com/300/300'];
var bill = document.getElementById('bill');
var right = document.getElementById('right');
var left = document.getElementById('left');

right.addEventListener("click", function(){
	if (bill.src === photos[0]) {
		bill.src = photos[1];
	}
	else if (bill.src === photos[1]) {
		bill.src = photos[2];
	}
	else {
		bill.src = photos[0];
	}
});

left.addEventListener("click", function(){
	if (bill.src === photos[0]) {
		bill.src = photos[2];
	}
	else if (bill.src === photos[2]) {
		bill.src = photos[1];
	}
	else {
		bill.src = photos [0];
	}
});