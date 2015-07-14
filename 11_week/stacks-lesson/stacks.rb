class Stack

	def initialize
		@contents = []
	end

	def push(elem)
		@contents.push(elem)
	end

	def pop
		@contents.pop()
	end

	def peek
		@contents[@contents.length-1]
	end

	def clear
		@contents = []
	end

	def empty?
		@contents.length === 0
	end
end

stack = Stack.new
p stack.push("hello")
p stack.push("hello")
p stack.push("hello3")

p stack.peek()
p stack.clear
p stack.empty?