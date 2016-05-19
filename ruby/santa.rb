#create santa class
#create methods for santa class
#create initialize method with gender and ethnicity attributes
class Santa
	attr_reader :ethnicity, :reindeer_ranking, :age
	attr_accessor :gender, :age
	def initialize(gender, ethnicity)
		puts "Initializing santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
	end

	#create speak method
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	#create eat milk and cookies method
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	# setter methods
	#celebrate birthday method
		#add 1 to current santa age
	def celebrate_birthday
		@age = @age + 1
	end

	#get mad at method
		#move reindeer to end of reindeer ranking list
	def get_mad_at=(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking = @reindeer_ranking << name
	end
end

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

#DRIVER CODE

	# 5.times do santas[0].celebrate_birthday
	# end

	# p santas[0].reindeer_ranking

	# p santas[0].age

	# puts "Current reindeer ranking is #{santas[0].reindeer_ranking}"

	# santas[0].get_mad_at = "Rudolph"

	# puts "Current reindeer ranking is #{santas[0].reindeer_ranking}"

	# p santas[0].gender

	# santas[0].gender = "female"

	# p santas[0].gender

i = 0
huge_santas = []
#loop to create many santas
100.times do
huge_santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "#{i + 1} santas have been created!"
  puts "Santa#{i + 1} age: #{huge_santas[i].age}"
  puts "Santa#{i + 1} gender: #{huge_santas[i].gender}"
  puts "Santa#{i + 1} ethnicity: #{huge_santas[i].ethnicity}"
  puts "----"
	 i += 1
end

