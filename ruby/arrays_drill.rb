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


