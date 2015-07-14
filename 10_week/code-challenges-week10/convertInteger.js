//javascript

function convert(integer){
	console.log(integer);
	var string;
	string = integer.toString();
	console.log(string);
	string = string.split("");
	console.log(string);
	if (string.length > 3){
		string.splice(1, 0,",");
	}
	if (string.length >6){
		string.splice(5,0, ",");
	}
	if (string.length > 9){
		string.splice(9,0,",");
	}
	return string.join("");
}


convert(1000);    //returns "1,000"
convert(100000);  //returns "100,000"
convert(1000000); //returns "1,000,000"