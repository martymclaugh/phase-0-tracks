def alias_manager(name)
#def a method with that gives a name a fake name
	new_name = name.split(' ').reverse.join(' ')
	#swap first and last name
	new_name = new_name.downcase
	vowels = 'aeiou'
	# create vowels variable
	consonants = 'bcdfghjklmnpqrstvwxyz'
	# create consonants variable
	n_index = 0
	a_index = 0
	# create index for vowels and consonants and index for name
	while n_index < name.length
		if new_name[n_index] == ' '
			n_index += 1
			a_index = 0
			#create conditional for ' '
		elsif new_name[n_index] == consonants[a_index]
		# loop through index to move to the next vowel
			if new_name[n_index] == 'z'
				new_name[n_index] = 'b'
			# create conditional for "z"
			else
				new_name[n_index] = consonants[a_index + 1]
				# change all vowels to the next vowl
			end
			n_index += 1
			a_index = 0
		elsif new_name[n_index] == vowels[a_index]
		# loop through index to move to the next consonant
			if new_name[n_index] == 'u'
				new_name[n_index] = 'a'
			#create conditional for "u"
			else
				new_name[n_index] = vowels[a_index + 1]
				# change all consonants to the next consonant
			end
			n_index += 1
			a_index = 0
		else
			a_index += 1
		end
	end
	new_name = new_name.split(' ').each{|names| names.capitalize!}.join(' ')
	#add line of code to capitalize the names again
	new_name
	#return new_name
end
input = ""

all_the_names = []
#create empty data structure to store items in

until input == "a girl has no name"
#use loop to provide a way to exit program
	puts "What name would you like an alias for? To quit, type 'a girl has no name'"
	input = gets.chomp
	#obtain name for translating
	if input == "a girl has no name"
		break
	end
	puts "You will now go by #{alias_manager(input)}. Vaya con Dios."
	#print name in a sentence
	all_the_names.push("#{input} is now an assassin known as #{alias_manager(input)}")
	#add each entry to array
	
end

puts all_the_names

puts "You know nothing, Jon Snow."
#GOT

