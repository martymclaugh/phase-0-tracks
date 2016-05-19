class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end

	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

	age = 0

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
end

# santa = Santa.new

# santa.speak

# santa. eat_milk_and_cookies("oreo")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "There are now #{santas.length} in the group!"
  puts "-----"
end

index = 0
santas.each do 
	puts "Santa#{index} is of the #{example_genders[index]} gender and #{example_ethnicities[index]} ethnicity."
	puts "     "
	index += 1
end
