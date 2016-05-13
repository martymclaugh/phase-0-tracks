# prompt user for information
# convert user input to appropriate type
# print hash back on screen when all questions are answered
# give user opportunity to update any key
# print latest version of hash
interior_design = {}
# create a new hash

interior_design = {client_name: nil, age: nil, num_children: nil, decor_theme: nil, color_theme: nil, favorite_furniture: nil, pets: nil, moving_space: nil}
# create keys for the client's name, age, number of children, decor theme, color theme, favorite furniture, has pets, cares about space to move around.

puts "What's your name?"
interior_design[:client_name] = gets.chomp

puts "How old are you?"
interior_design[:age] = gets.chomp

puts "How many children do you have?"
interior_design[:num_children] = gets.chomp

puts "What's your favorite decor theme?"
interior_design[:decor_theme] = gets.chomp

puts "What color theme would you like to use?"
interior_design[:color_theme] = gets.chomp

puts "What is your favorite furniture?"
interior_design[:favorite_furniture] = gets.chomp

puts "Do you have pets?"
interior_design[:pets] = gets.chomp

puts "Would you like to have space to move around in?"
interior_design[:moving_space] = gets.chomp
