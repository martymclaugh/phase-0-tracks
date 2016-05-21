# create a zombie class
class Zombie
	attr_reader :age
	attr_accessor :brains_eaten, :movement_speed, :name

	# create 3 attribute classes
	# 	brains eaten
	# 	movement speed
	# 	age

	def initialize
		puts "Initializing zombie instance..."
		@age = rand(365)
		@brains_eaten = rand(30)
		@movement_speed = "slow"
		@name = name
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

	def print_zombie(zombie)
		zombie.each do |zom|
			puts "Zombie's Name: #{zom.name}"
			puts "Zombie's Age: #{zom.age} days"
			puts "Zombie's Speed: #{zom.movement_speed}"
			puts "Brains Eaten: #{zom.brains_eaten} brains"
		end
	end
end

horde = []
input = ""
num_of_zoms = horde.length
index = 0
until input == "done"
	puts "Welcome to the Build-a-Horde workshop. Your horde currently has #{num_of_zoms} zombies."
	puts " "
	puts "Type the name of your next zombie or type 'done' if you are finished."
	name_input = gets.chomp
	if name_input == "done"
		break
	end
	horde << Zombie.new
	horde[index].name = name_input
	p horde
	index += 1
end




horde.each do |zom|
	puts "Zombie's Name: #{zom.name}"
	puts "Zombie's Age: #{zom.age} days"
	puts "Zombie's Speed: #{zom.movement_speed}"
	puts "Brains Eaten: #{zom.brains_eaten} brains"
	puts " "
end


#DRIVER CODE
# fred = Zombie.new

# puts fred.brains_eaten

# fred.bite_appendage("head")

# puts fred.brains_eaten

# p horde

# puts fred.movement_speed

# fred.survivor_spotted

# puts fred.movement_speed

# fred.eat_brains(12)
# fred.eat_brains(15)
