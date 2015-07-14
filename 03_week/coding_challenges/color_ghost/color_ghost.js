// ##COLOR GHOST
// ---

// ```Create a JavaScript object named Ghost that includes a function named "color". When I call this function it should return a random color```

// ---

// EXAMPLE:

//     ghost.color() //=> "white" or "yellow" or "purple" or "red"

var ghost = {color: function() {
				
				var rainbow = ["red", "orange", "yellow", "green", "blue", "violet", "white", "purple"];
				var random = Math.floor(Math.random() * rainbow.length);
				return rainbow[random];
			}



}

console.log(ghost.color());
