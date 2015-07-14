//javascript

arr = [{morning:true, time:"9am"}, {morning:false, time:"10pm"}];

addProperty(arr,"sleepy",true); 
//returns [ { morning: true, time: '9am', sleepy: true },{ morning: false, time: '10pm', sleepy: true } ]

function addProperty(object, key, value){
	var i;
	for (i = 0; i < object.length; i++){
		object[i][key] = value;
	}
	return object;
}