function Stack(){
	var self = this;
	self.contents = [];

	self.push = function(data){
		self.contents.push(data);
		return self.contents;
	};

	self.pop = function(){
		self.contents.pop();
		return self.contents;
	};

	self.peek = function(){
		return self.contents[self.contents.length-1];
	};

	self.clear = function(){
		self.contents = [];
		return self.contents;
	};

	self.isEmpty = function(){
		// return self.contents.length === 0 ?  true :   false
		return self.contents.length === 0;
	}
};

var stack = new Stack();
console.log(stack.push("hello"));
console.log(stack.push("hello"));
console.log(stack.push("hello3"));
console.log(stack.isEmpty());
console.log(stack.peek());
console.log(stack.clear());
console.log(stack.isEmpty());