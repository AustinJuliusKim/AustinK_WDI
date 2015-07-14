console.log("we're in business");

var song = {
	one: "you're like a dream come true",
	two: "just wanna be with you",
	theChorus: function() {
		console.log(this);
		// logs to console the object
		console.log(this.one + " " + this.two);
		// logs to console the elements of the object
	}
}

song.theChorus();

function myOutsideFunc() {
	console.log(this);
}

myOutsideFunc();