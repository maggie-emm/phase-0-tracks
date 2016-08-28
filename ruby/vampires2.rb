#WEREWOLF Inc; new employee interview process

#REL 1: DATA GATHERING STAGE:
#Ask new employees following questions:

puts "What is you name?" # (Str)
	name = gets.chomp

puts "How old are you?" #(Int)
	age = gets.chomp

puts "What year were you born?" #(Int)
	year_born = gets.chomp

puts "Would you like an order of garlic bread from the cafeteria? (y/n)"
	galic_preference = gets.chomp.downcase

	valid_input = true
	if galic_preference == "y"
		puts "Glad you like garlic. I do too!"
	else
		puts "So you're not a garlic fan? hmmm"
	end

puts "Would you like to enroll in company's health insurance? (y/n)"
	insurance_preference = gets.chomp.downcase

	valid_input = true
	if insurance_preference == "y"
		puts "Glad to provide you with health insurance."
	else
		puts "No health insurance? hmmm"
	end
	