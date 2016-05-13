# give user opportunity to update any key
# print latest version of hash
interior_design = {}
# create a new hash

interior_design = {client_name: nil, age: nil, num_children: nil, decor_theme: nil, color_theme: nil, favorite_furniture: nil, pets: nil, moving_space: nil}
# create keys for the client's name, age, number of children, decor theme, color theme, favorite furniture, has pets, cares about space to move around.

puts "What's your name?"
interior_design[:client_name] = gets.chomp.to_s

puts "How old are you?"
interior_design[:age] = gets.chomp.to_i

puts "How many children do you have?"
interior_design[:num_children] = gets.chomp.to_i

puts "What's your favorite decor theme?"
interior_design[:decor_theme] = gets.chomp.to_s

puts "What color theme would you like to use?"
interior_design[:color_theme] = gets.chomp.to_s

puts "What is your favorite furniture?"
interior_design[:favorite_furniture] = gets.chomp.to_s

puts "Do you have pets?"
interior_design[:pets] = gets.chomp.downcase

if interior_design[:pets] = "yes" || "y"
	interior_design[:pets] = true
else interior_design[:pets] = false
end
# convert user input to appropriate type

puts "Would you like to have space to move around in?"
interior_design[:moving_space] = gets.chomp

if interior_design[:moving_space] = "yes" || "y"
	interior_design[:moving_space] = true
else interior_design[:moving_space] = false
end
# convert user input to appropriate type
# prompt user for information

puts interior_design
# print hash back on screen when all questions are answered

puts "Is there anything you would like to change?"
answer = gets.chomp.downcase
if answer = "yes" || "y"
	puts "Which of the following would you like to change: client_name, age, num_children, decor_theme, color_theme, favorite_furniture, pets, or moving_space"