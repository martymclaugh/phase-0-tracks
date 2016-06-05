# Calorie Counter Database 
# UI 
puts "What is your gender? type 'male' or 'female'."
gender = gets.chomp
puts "What is your age?"
age = gets.chomp.to_i
puts "What is your height in inches?"
height = gets.chomp.to_i
puts "How much do you weigh in pounds?"
weight = gets.chomp.to_i
if gender == "female"
	bmr = 655 + (4.35 * weight) + (height * 4.7) - (4.7 * age)
else
	bmr = 66 + (6.23 * weight) + (height * 12.7) - (6.8 * age)
end
puts bmr
puts "How active are you? If not very active type '1'. If you do 30 - 60 minutes of easy physical activity a day type '2'. If you do 60 minutes of moderate activity type '3'. If you do at least 120 minutes of moderate activity or 60 minutes of intense activity type '4'."
activity_level = gets.chomp

case activity_level
when '1'
	bmr = bmr * 1.2
when '2'
	bmr = bmr * 1.5
when '3'
	bmr = bmr * 1.75
else
	bmr = bmr * 2.3
end
puts bmr