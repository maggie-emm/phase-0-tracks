#WEREWOLF Inc; new employee interview process

#REL 1: DATA GATHERING STAGE:
#Ask new employees following questions:

puts "What is your name?" # (Str)
	name = gets.chomp

puts "How old are you?" #(Int)
	age = gets.chomp.to_i

puts "What year were you born?" #(Int)
	year_born = gets.chomp.to_i

current_year = Time.now.year
correct_age = current_year - year_born

	if correct_age == age
		correct_age = true
	else
		correct_age = false
	end

# valid_input = false
# 	if correct_age == age
# 		valid_input = true
# 		puts "WereWolf, Inc. has verified that your age is correct"
# 	else
# 		puts "WereWolf, Inc. has identified an issue with your age"
# 	end

valid_input = false
until valid_input

puts "Would you like an order of garlic bread from the cafeteria? (y/n)"
	garlic_preference = gets.chomp.downcase

	if garlic_preference == "y"
		valid_input = true
		puts "Glad you like garlic. I do too!"
	elsif garlic_preference == "n"
		valid_input = true
		puts "So you're not a garlic fan? hmmm"
	else
		puts "It's a simple (y)es or (n)o answer. Try it again"
	end
end

valid_input = false
until valid_input

puts "Would you like to enroll in company's health insurance? (y/n)"
	insurance_preference = gets.chomp.downcase

	if insurance_preference == "y"
		valid_input = true
		puts "Glad to provide you with health insurance."
	elsif insurance_preference == "n"
		valid_input = true
		puts "No health insurance? hmmm"
	else
		puts "It's a simple (y)es or (n)o answer. Try it again"
	end
end

# Match the following conditions in the order they're listed. Your program should base 
# its result on the latest condition matched, not the first condition matched. 
# In other words, it's not a "only one condition will apply" sort of scenario. 
# This may mean repeatedly updating a variable as each condition is checked, so that 
# the variable always contains the most precise result.


	if correct_age = true && (garlic_preference == "y" || insurance_preference == "y")
		puts "Probably not a vampire"
	elsif correct_age = false && (garlic_preference == "n" || insurance_preference = "n")
		puts "Probably a vampire"
	elsif correct_age = false && garlic_preference == "n" && insurance_preference == "n"
		puts "Almost certainly a vampire"
	elsif name == "Drake Cula" || "Tu Fang"
		puts "Definitely a vampire"
	else 
		puts "Results inconclusive"
# DEBUG: Getting last result...

# Print the result at the end of the survey.

puts "\nHere are the results of your interview questions:"
puts "Name: #{name}"
puts "Age: #{age}; Year Born: #{year_born}, Computed Age: #{correct_age}"
puts "Garlic preference: #{garlic_preference}"
puts "Health Insurance preference: #{insurance_preference}"