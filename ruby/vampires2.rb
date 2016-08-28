#WEREWOLF Inc; new employee interview process

#REL 1: DATA GATHERING STAGE:
#Ask new employees following questions:

puts "What is you name?" # (Str)
	name = gets.chomp

puts "How old are you?" #(Int)
	age = gets.chomp

puts "What year were you born?" #(Int)
	year_born = gets.chomp


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