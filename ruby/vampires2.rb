#WEREWOLF Inc; new employee interview process

puts "How many employees will we be processing today?"
number_employees = gets.chomp.to_i

index = 0
while index < number_employees

#REL 1: DATA GATHERING STAGE:
#Ask new employees following questions:

puts "\nWhat is your name?" # (Str)
	name = gets.chomp.to_s

puts "\nHow old are you?" #(Int)
	age = gets.chomp.to_i

puts "\nWhat year were you born?" #(Int)
	year_born = gets.chomp.to_i

current_year = Time.now.year
correct_age = current_year.to_i - year_born.to_i

	if correct_age == age.to_i
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

puts "\nWould you like an order of garlic bread from the cafeteria? (y/n)"
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

puts "\nWould you like to enroll in company's health insurance? (y/n)"
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

# employee should list any allergies
# loop until "Done"
#  - if allergy = "Sunshine" >>> "Probably a vampire"

puts "\nThe Department of WereWolf Health and Vessen Services requires that we maintain a list of your allergies."

allergies = ""
	until allergies == "done" || allergies == "sunshine"
		puts "Please list any allergies you have. Type 'done' when complete with your list or if you have none."
		allergies = gets.chomp.downcase
	end

	if allergies = "done"
		puts "Thank you for your input"
	end
#BUG: gets "Prob vampire msg when type done"

# Match the following conditions in the order they're listed. Your program should base 
# its result on the latest condition matched, not the first condition matched. 
# In other words, it's not a "only one condition will apply" sort of scenario. 
# This may mean repeatedly updating a variable as each condition is checked, so that 
# the variable always contains the most precise result.

# Print the result at the end of the survey.

puts "\nHere are the results of your interview questions:"
puts "Name: #{name}"
puts "Age: #{age}; Year Born: #{year_born}, Computed Age: #{correct_age}"
puts "Garlic preference: #{garlic_preference}"
puts "Health Insurance preference: #{insurance_preference}"

#put conditions in place
	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire"
		#Test OK
	elsif allergies = "sunshine"
		puts "Probably a vampire"
	elsif (correct_age == true) && (garlic_preference == "y" || insurance_preference == "y")
		puts "Probably not a vampire"
		#test ok
	elsif (correct_age == false) && (garlic_preference == "n" || insurance_preference == "n")
		puts "Probably a vampire"
		#test ok
	elsif (correct_age == false) && (garlic_preference == "n") && (insurance_preference == "n")
		puts "Almost certainly a vampire"
#BUG:	#test FAILED; prints: Probably a vampire; running on 1st condition. not sure how 
		# to check all
	else 
		puts "Results inconclusive"
		#test ok: age=true;garlic=n;ins=n
	end

index += 1

end

puts "\nActually, never mind!  What do these questions have to do with anything? Let's all be friends"


# # DEBUG: all test ok except for "age=false && ga"	

# #driver code
# name = "m"
# p name
# age = 6
# year_born = 2011
# current_year = Time.now.year
# correct_age = current_year - year_born
# 	if correct_age.to_i == age.to_i
# 		correct_age = true
# 	else
# 		correct_age = false
# 	end
# p correct_age
# garlic_preference = "n"
# p garlic_preference
# insurance_preference = "n"
# p insurance_preference