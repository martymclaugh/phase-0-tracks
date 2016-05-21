# create a zombie class
class Zombie
	attr_reader :age
	attr_accessor :brains_eaten, :movement_speed, :name

	# create 3 attribute classes
	# 	brains eaten
	# 	movement speed
	# 	age

	def initialize(name)
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
	puts "Zombie's Name: #{zombie.name}"
	puts "Zombie's Age: #{zombie.age}"
	puts "Zombie's Speed: #{zombie.movement_speed}"
	puts "Brains Eaten: #{zombie.brains_eaten}"

	end
end

random_names = ["Fred", "George", "Mary", "Catherine", "Jose", "Martha", "Harry", "Max", "Deanna", "Ingrid", "Valerie", "Jessica", "Ethan", "Usain Bolt"]

puts "Welcome to the apocolypse, how many zombies would you like to create?"
num_of_zombies = gets.chomp.to_i
# p num_of_zombies
horde = []
num_of_zombies.times do
	horde << Zombie.new(random_names.sample)
end

if :name == "Usain Bolt"
	movement_speed = "really really fast"
end



puts "You now have #{horde.length} zombies in your horde."
puts " "

horde.each do |zom|
	puts "Zombie's Name: #{zom.name}"
	puts "Zombie's Age: #{zom.age} days"
	puts "Zombie's Speed: #{zom.movement_speed}"
	puts "Brains Eaten: #{zom.brains_eaten} brains"
	puts " "
end

puts "Select a zombie in your horde to update their stats using a number from 1 to #{horde.length}"
input = gets.chomp.to_i - 1
print_zombie(horde[input])
puts "Zombie's Name: #{horde[input].name}"
puts "Zombie's Age: #{horde[input].age}"
puts "Zombie's Speed: #{horde[input].movement_speed}"
puts "Brains Eaten: #{horde[input].brains_eaten}"

puts what would you lik
# if input == "print"
# 	horde.each do |x|
# 		print_horde(x)
# 	end
# end



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
