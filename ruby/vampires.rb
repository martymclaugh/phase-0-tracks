puts "How many employees will be processed?"
employees = gets.chomp.to_i
until employees == 0
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
	
	if garlic_bread == "yes" || garlic_bread == "Yes" || garlic_bread == "Y"
		garlic_bread = "y"
	else
		garlic_bread = "n"
	end

	if health_insurance == "yes" || health_insurance == "Yes" || health_insurance == "Y"
		health_insurance = "y"
	else
		health_insurance = "n"
	end

	if yob + age == 2016
		age_correct = true
	else
		age_correct = false
	end

	if age_correct == true && garlic_bread == "y"
		vampresult = "Probably not a vampire."
	end

	if age_correct == false && (garlic_bread == "n" || health_insurance == "n")
		vampresult = "Probably a vampire."
	end

	if age_correct == false && garlic_bread == "n" && health_insurance == "n"
		vampresult = "Almost certainly a vampire."
	end

	if name == "Drake Cula" || name == "Tu Fang"
		vampresult = "Definitely a Vampire."
	end

	if vampresult == nil
		vampresult = "Results inconclusive."
	end

	puts "Are you allergic to anything?"
	allergies = gets.chomp
	until allergies == "n"
		puts "Are you allergic to anything?"
		allergies = gets.chomp
		if allergies == "no" || allergies == "No" || allergies == "N"
			allergies = "n"
		end
		if allergies == "sunshine"
			vampresult = "Probably a vampire."
		break
		end
	end

	puts vampresult
	employees = employees - 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."