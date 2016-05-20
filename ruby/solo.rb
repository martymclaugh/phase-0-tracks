# create a zombie class
class Zombie
	attr_reader :age
	attr_accessor :brains_eaten, :movement_speed

	# create 3 attribute classes
	# 	brains eaten
	# 	movement speed
	# 	age

	def initialize(age)
		puts "Initializing zombie instance..."
		@age = age
		@brains_eaten = 0
		@movement_speed = slow
	end

	# create 3 methods
	# 	bite appendage method that takes a limb as an argument
	# 		print on the screen which limb has been eaten
	# 	survivor spotted method
	# 		changes movement speed to fast
	# 	eat brains method
	# 		adds 1 to the brains eaten 
	# 		prints the zombie ate your brain

	def bite_appendage(limb)
		puts "The zombie has taken a bite out of your #{limb}"
		if limb == "head"
			brains_eaten += 1
	end
end

#DRIVER CODE
fred = Zombie.new(10)
puts brains_eaten
fred.bite_appendage("head")
puts brains_eaten