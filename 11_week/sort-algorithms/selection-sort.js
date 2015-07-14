var unsorted = [8,6,3,2,1,5,7,9,0,4];
var sorted = [];
var = store;

function sort(array){
	for (var i = 0; i < array.length-1; i++){
		var min = i;
		for (var j = i + 1; j < array.length -1; j++){
			if (array[i] > array[j]){
				min = j;
			}
		}
		if (min !== i) {
			var store = i;
			min = store;
		}
	}
}



sort(unsorted);