approx_age = nil


puts "What's your hamsters name?"
hamsters_name = gets.chomp
puts "How loud is your hamster between 1-10?"
volume_level = gets.chomp.to_i
puts "What's the fur color?"
fur_color = gets.chomp
puts "Is this hamster available for adoption"
adoption = gets.chomp
puts "Whats the approximate age of the hamster?"
approx_age = gets.chomp.to_f


puts hamsters_name
puts volume_level
puts fur_color
puts adoption
puts approx_age