
function swapElements(arr, index1, index2){
  
}

function bubbleSort(data){
	var leng = data.length
	for (var j = 0; j < len; j++){
		for (var i = 0; i < len -1; i ++){
			if (data[i] > data[i+1]){
				swapElements(data, i+1, i);
			}
		}
	}
	return data;
}

var dataset = [5,7,1,2,8,3,9,4,0]



console.log(bubbleSort(dataset));
