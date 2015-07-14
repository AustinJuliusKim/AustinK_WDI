//javascript

highAndLow("1 2 3 4 5"); // return "5 1"
highAndLow("1 2 -3 4 5"); // return "5 -3"
highAndLow("1 9 3 4 -5"); // return "9 -5"


function highAndLow(string){
	var arr;
	var result;
	var high;
	var low;
	arr = string.split(" ");
	result = arr.sort();
	high = result[result.length-1];
	low = result[0];
	answer = "" + high + " " + low
	return answer
}