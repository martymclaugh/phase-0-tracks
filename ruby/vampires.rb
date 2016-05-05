name = 
age = 
yob = 
garlic_bread =
health_insurance = 

 puts "What is your name?"
 name = gets.chomp
 puts "How old are you?"
 age = gets.chomp.to_i
 puts " What year were you born?"
 yob = gets.chomp.to_i
 puts "Our company cafeteria serves garlic bread. Should we order some for you?"
 garlic_bread = gets.chomp
 puts "Would you like to enroll in the company’s health insurance?"
 health_insurance = gets.chomp

if garlic_bread == "yes" || garlic_bread == "Yes" || garlic_bread == "y" || garlic_bread == "Y"
	garlic_bread = "y"
else
	garlic_bread = "n"
end

if health_insurance == "yes" || health_insurance == "Yes" || health_insurance == "y" || health_insurance == "Y"
	health_insurance = "y"
else
	health_insurance = "n"
end

 puts age