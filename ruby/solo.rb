# create a zombie class
class Zombie
	attr_reader :age
	attr_accessor :brains_eaten, :movement_speed

	# create 3 attribute classes
	# 	brains eaten
	# 	movement speed
	# 	age

	def initialize
		puts "Initializing zombie instance..."
		@age = 1
		@brains_eaten = 0
		@movement_speed = "slow"
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
		puts "The zombie has taken a bite out of your #{limb}!"
		if limb == "head"
			@brains_eaten += 1
			puts "The zombie has now eaten #{brains_eaten} brains!"
		end
	end

	def survivor_spotted
		@movement_speed = "fast"
		puts "The zombie has seen you and is now moving really #{movement_speed}!"
	end

	def eat_brains(num_brains)
		@brains_eaten += num_brains
		puts "The zombie has now eaten #{brains_eaten} brains!"
	end
end

puts "Welcome to the apocolypse, how many zombies would you like to create?"
num_of_zombies = gets.chomp.to_i
horde = []
p num_of_zombies.times do
	horde << Zombie.new
end
p horde
puts "You now have #{}"

#DRIVER CODE
fred = Zombie.new

puts fred.brains_eaten

fred.bite_appendage("head")

puts fred.brains_eaten

puts fred.movement_speed

fred.survivor_spotted

puts fred.movement_speed

fred.eat_brains(12)
fred.eat_brains(15)





