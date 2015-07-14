var password = document.getElementById("password");
var show = document.getElementById("show");
var hidden = [];
var shown = ""
// var hiddenPassword = password.value

password.addEventListener("input", function() {
	// console.log(password.value[password.value.length -1]);
	hidden.push(password.value[password.value.length -1]);
	console.log(hidden);
	// logs to the console pushed password letter
	function hidePassword(pw){
		pw = pw.replace(/([a-zA-Z ])/g, "*");
		password.value = pw
	}
	hidePassword(password.value);
	console.log(password.value); 
	// logs to the console "*"

})

show.addEventListener("mouseup", function(){
	function showPassword(pw){
		for (var i = 0; i < hidden.length ; i++){
			shown += hidden[i];
			console.log(shown);
			// logs to the console the letter that will be shown
		}
		password.value = shown;
	}

	showPassword(password.value);
	console.log(hidden);

})
// show.addEventListener("mouseup", function() {
// 	hidden.push(password.value[password.value.length - 1]);
// 	function hidePassword(pw){
// 		pw = pw.replace(/([a-zA-Z ])/g, "*");
// 		password.value = pw;
// 	}
// 	hidePassword(password.value);
// })






