def makearray(a, b, c)
	newarray = Array.new
	newarray.push(a, b, c)
end

def additem(array, item)
	array << item
end

p makearray("hello", "ok", "yeah")

variable1 = Array.new

p variable1

variable1.push("a", "b", "c", "d", "e")

p variable1

variable1.delete_at(2)

p variable1

variable1.insert(2, "C")

p variable1

variable1.shift

p variable1

if variable1.include?("b")
	puts "yes it inlcudes b"
else
	puts "no it does not include b"
end

p variable1.include?("b")

variable2 = Array.new

variable2.push(1, 2, 3, 4, 5)

p variable2

variable3 = Array.new

variable3.push(variable1, variable2)

p variable3

p additem(variable3, "done")