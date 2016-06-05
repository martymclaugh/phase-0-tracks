# CALORIE COUNTER PROGRAM 
# Require gems
require 'sqlite3'

# Create sqlite database
db = SQLite3::Database.new("daily_calorie.db")
db.results_as_hash = true

# UI 

# obtain gender, age, height, and weight of user.
puts "What is your gender? type 'male' or 'female'."
gender = gets.chomp
puts "What is your age?"
age = gets.chomp.to_i
puts "What is your height in inches?"
height = gets.chomp.to_i
puts "How much do you weigh in pounds?"
weight = gets.chomp.to_i

# calculate bmr based on variables given
if gender == "female"
	bmr = 655 + (4.35 * weight) + (height * 4.7) - (4.7 * age)
else
	bmr = 66 + (6.23 * weight) + (height * 12.7) - (6.8 * age)
end

# get activity level from user
puts "How active are you? If not very active type '1'. If you do 30 - 60 minutes of easy physical activity a day type '2'. If you do 60 minutes of moderate activity type '3'. If you do at least 120 minutes of moderate activity or 60 minutes of intense activity type '4'."
activity_level = gets.chomp

# adjust bmr based on activity level
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
bmr = bmr.to_i
#explain bmr and how many calories to eat if you are trying to lose a lb a week.
ideal_bmr = bmr - 500
puts "Your base metabolic rate is #{bmr}, meaning you may eat #{bmr} calories a day to maintain your same weight.\n\n"
puts "In order to lose a pound a week (the healthiest way to lose weight is to only lose 1-2 lbs a week) you may eat only #{ideal_bmr} calories a day.\n\n"

#create table method
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS daily_food(
    id INTEGER PRIMARY KEY,
    food VARCHAR(255),
    calories INT
  )
SQL
# create add food method to insert the food and calories into the database
def add_food(db, food, calories)
	db.execute("INSERT INTO daily_food (food, calories) VALUES (?, ?)", [food, calories])
end

def print_food(food)
	i = 1
	food.each do |list|
		puts "#{i}. #{list['food']} with #{list['calories']} calories."
		i += 1
	end
end

daily_bmr = ideal_bmr
user_input1 = ""
puts "Welcome to the Calorie Counter! When you are finished type 'done'."

# retrieve food data from user
until user_input1 == 'done'
	# create the table
	db.execute(create_table)
	puts "What have you eaten?"
	user_input1 = gets.chomp
	if user_input1 == 'done'
		break
	end
	puts "How many calories does #{user_input1} have?"
	user_input2 = gets.chomp.to_i
	# add input to table
	add_food(db, user_input1, user_input2)
	# create active calorie variable
	daily_bmr = daily_bmr - user_input2
	if daily_bmr > 0
		puts "*****You may still eat #{daily_bmr}*****\n\n"
	else
		puts "Uh oh! You've reached your daily calorie limit. You better go for a run!"
	end
end

i = 1

puts "This is what you have eaten today!"

# print all of the entries
food = db.execute("SELECT * FROM daily_food")
print_food(food)

# ask user if they want to change anything
puts "Would you like to change anything? type  'y' or 'n'."
user_input = gets.chomp

if user_input == 'y'
	# decide between change and delete
	puts "Would you like to change it or delete it? Type 'change' or 'delete'."
	user_input = gets.chomp
	#  if its change gather id of item they want to change, and info they want to change it to.
	if user_input == 'change'
		puts "Type the number you would like to change."
		update_row = gets.chomp
		puts "Type the new food."
		update_food = gets.chomp
		puts "Type the amount of calories #{update_food} has."
		update_calories = gets.chomp.to_i
		# use sql update code to update the row in the table.
		db.execute("UPDATE daily_food SET food='#{update_food}', calories='#{update_calories}' WHERE id='#{update_row}';")
	else
		puts "Which food would you like to delete?"
		delete_row = gets.chomp
		# use sql delete code to delete the row.
		db.execute("DELETE FROM daily_food WHERE food='#{delete_row}';")
	end
end
# EXIT STATEMENT

puts "Your food list from today!"

# print food list
food = db.execute("SELECT * FROM daily_food")
print_food(food)

# get sum of total calories from table
total_calories = db.execute("SELECT SUM(calories) FROM 'daily_food'")[0]
total_calories = total_calories.to_a

sum = 0
total_calories[1].each do |x|
	sum += x
end

# print total calories.
puts "You have eaten a total of #{sum} calories today with #{ideal_bmr - sum} calories left! You look beautiful!"