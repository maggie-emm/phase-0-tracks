#WEREWOLF Inc; new employee interview process

#REL 1: DATA GATHERING STAGE:
#Ask new employees following questions:

puts "What is you name?" # (Str)
	name = gets.chomp

puts "How old are you?" #(Int)
	age = gets.chomp.to_i

puts "What year were you born?" #(Int)
	year_born = gets.chomp.to_i

current_year = Time.now.year
correct_age = current_year - year_born

correct_age == age

valid_input = false
	if correct_age == age
		valid_input = true
		puts "WereWolf, Inc. has verified that your age is correct"
	else
		puts "WereWolf, Inc. has identified an issue with your age"
	end

valid_input = false
until valid_input

puts "Would you like an order of garlic bread from the cafeteria? (y/n)"
	galic_preference = gets.chomp.downcase

	if galic_preference == "y"
		valid_input = true
		puts "Glad you like garlic. I do too!"
	elsif galic_preference == "n"
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

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”
# Print the result at the end of the survey.