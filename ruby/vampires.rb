name = 
age = 
yob = 
garlic_bread =
health_insurance = 
age_correct = 
 puts "What is your name?"
 name = gets.chomp
 puts "How old are you?"
 age = gets.chomp.to_i
 puts "What year were you born?"
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

if yob + age == 2016
	age_correct = "true"
else
	age_correct = "false"
end

if age_correct = "true" && garlic_bread = "y"
	puts "Probably not a vampire."
	elsif age_correct = "false" && garlic_bread = "n"
		puts "Probably a vampire."
	elsif age_correct = "false" && garlic_bread = "n" && health_insurance = "n"
		puts "Almost certainly a vampire."
	elsif name = "Drake Cula" || name = "Tu Fang"
		puts "Definitely a Vampire."
	else
		puts "Results inconclusive."
end