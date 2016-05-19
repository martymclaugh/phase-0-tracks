#create santa class
#create methods for santa class
#create initialize method with gender and ethnicity attributes
class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	#create speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	#create eat milk and cookies method
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	# getter methods
	def reindeer_ranking
		@reindeer_ranking
	end

	def age
		@age
	end

	# setter methods
	def celebrate_birthday
		@age = @age + 1
	end

end
p @reindeer_ranking
# santa = Santa.new

# santa.speak

# santa. eat_milk_and_cookies("oreo")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
index = 0

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "There are now #{santas.length} santas in the group!"
  #loop to print out "name" gender and ethnicity for each santa
	santas.each do while index + 1 <= santas.length
		puts "Santa#{index} is of the #{example_genders[index]} gender and #{example_ethnicities[index]} ethnicity."
	 	# puts "Current reindeer ranking is #{santas[index].reindeer_ranking}"
		puts "     "
		index += 1
	end
end
end

5.times do santas[0].celebrate_birthday
end

p santas[0].age

