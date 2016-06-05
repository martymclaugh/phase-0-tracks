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
puts "Your base metabolic rate is #{bmr}, meaning you may eat #{bmr} calories a day to maintain your same weight.\n\n"
puts "In order to lose a pound a week (the healthiest way to lose weight is to only lose 1-2 lbs a week) you may eat only #{bmr - 500} calories a day.\n\n"

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS day[i](
    id INTEGER PRIMARY KEY,
    food VARCHAR(255),
    calories INT
  )
SQL

def add_food(db, name, calories)
	db.execute("INSERT INTO day[i] (food, calories) VALUES (?, ?)", [name, calories])
end
i = 1
# until user_input == 'done'
# 	db.execute(create_table)
	puts "It is currenty day #{i}. What have you eaten? Enter the food item as 1 word and the amount of calories"
	user_input = gets.chomp
	user_input.split(" ")
	puts user_input
	add_food(db, user_input[0], user_input[1])








