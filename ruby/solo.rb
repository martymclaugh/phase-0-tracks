# create a zombie class
class Zombie
	attr_reader :style
	attr_accessor :brains_eaten, :movement_speed, :name, :age

	# create 3 attribute classes
	# 	brains eaten
	# 	movement speed
	# 	age

	def initialize
		puts "Initializing zombie instance..."
		@age = age
		@brains_eaten = 0
		@movement_speed = "slow"
		@name = name
		@style = "classy"
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
		puts "The zombie has taken a bite out of #{limb}!"
		if limb == "head"
			brains_eaten += 1
			puts "The zombie has now eaten #{brains_eaten} brains!"
		end
	end

	def survivor_spotted
		@movement_speed = "fast"
		puts "The zombie has seen you and is now moving really #{movement_speed}!"
	end

	def eat_brains(num_brains)
		@brains_eaten += num_brains.to_i
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
	#intro
	puts "Welcome to the Build-a-Horde workshop. Your horde currently has #{index} zombies."
	puts " "
	#prompt user for name
	puts "Type the name of your next zombie or type 'done' if you are finished."
	name_input = gets.chomp
	if name_input == "done"
		break
	end
	horde << Zombie.new
	horde[index].name = name_input
	puts "-----"
	#prompt user for age
	puts "How many days old is #{horde[index].name}?"
	horde[index].age = gets.chomp
	puts "-----"
	#prompt user for speed
	puts "How fast is #{horde[index].name}?"
	horde[index].movement_speed = gets.chomp
	puts "-----"
	#prompt user for amount of brains eaten
	puts "How many brains has #{horde[index].name} eaten"
	num_brain = gets.chomp
	horde[index].eat_brains(num_brain)
	horde[index].brains_eaten = num_brain
	index += 1
	puts "-----"
end




horde.each do |zom|
	zom.print_zombie(horde)
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
