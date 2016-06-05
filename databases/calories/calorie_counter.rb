# Calorie Counter Database 
# UI 
puts "What is your gender?"
gender = gets.chomp
puts "What is your height in inches?"
height = gets.chomp.to_i
puts "How much do you weigh in pounds?"
weight = gets.chomp.to_i
bmi = (703 * weight) / (height ** 2)
puts "Your body mass index is #{bmi}"