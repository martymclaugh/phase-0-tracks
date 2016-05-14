def iteration
	puts "This is iteration!"
	yield("string1", "string2", "string3")
end

iteration { |variable1, variable2, variable3| puts "This is #{variable1} #{variable2} #{variable3}."}

release_date = [1999, 2015, 2012, 2003]
#Make new array

best_actor = {"Fight Club" => "Brad Pitt", "The Revenant" => "Leonardo DiCaprio", "The Avengers" => "Robert Downey Jr.", "Pirates of the Carribean" => "Johnny Depp"}
#Make new hash

puts release_date
puts best_actor
#Print hash and array

release_date.each do |year|
	puts year
end

puts release_date
#Iterate through array using .each

best_actor.each do |movie, actor|
	puts "In #{movie}, #{actor} was the star!"
end

puts best_actor
#Iterate through hash using .each
puts release_date
release_date.map! do |year|
	puts year
	year.next
end
#Iterate through array using .map!

puts release_date
puts best_actor
#Print the data again

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers

numbers_2 = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six"}
puts numbers_2
#Create new hash and array

numbers_2.delete_if {|digit, word| digit < 2}
puts numbers_2

numbers.delete_if {|number| number < 3}
puts numbers
# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

numbers_2.keep_if {|digit, word| digit > 3}
puts numbers_2

numbers.keep_if {|number| number > 4}
puts numbers
# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).


numbers_2.each do |digit, word|
	if digit > 4
		puts "#{digit}, #{word}"
	end
end

numbers.each do |number|
	if number >= 7
		puts "#{number}"
	end
end
# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

until numbers_2.delete_if {|digit, word| digit > 5}
	puts numbers_2
end
puts numbers_2

until numbers.delete_if {|number| number > 6}
	puts numbers
end
puts numbers	
# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.