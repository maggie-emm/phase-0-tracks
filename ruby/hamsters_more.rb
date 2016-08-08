# Define the variables:
hamster_name = #{hamster_name}
squeek_volume = #{squeek_volume}
fur_color = #{color}
adoption = #{adoption}
estimated_age = #{estimated_age}

# Define the method:
# Method > Intro:

puts "Welcome to Hamster Haven, your primary hamster sanctuary."
puts "None of our hamsters have identity crisis. They are all named."
puts "If you haven't named your hamster we will provide it with a name."

# Method > name:
valid_input = false

until valid_input

print "\nHave you named your hamster? ( y / n ): " 
named = gets.chomp

if named == "y" || named == "Y"
	valid_input = true
		print "Wonderful! Please enter the hamster's name here: "
		hamster_name = gets.chomp
			puts "#{hamster_name}! That's a great name for your hamster."

	elsif named == "n" || named == "N"
		valid_input = true
		puts "No worries. Charlie will give your hamster just the right name."

	else
		valid_input = false
		puts "Please enter only y for yes or n for no."
	end
end

# volume level: .to_i (integer: 1-10; where 1 is quiet as a mouse & 10 is a yapper)
puts "\nIf your hamster is adopted, we want to match it to a compatible human companion."

valid_input = false

until valid_input

print "On a scale of 1 to 10, 1 being quiet as a mouse and 10 being VERY NOISY, how would you rate your hamster's squeek level: "
squeek_volume = gets.chomp.to_i

# if squeek_vol is between =>1 && <=4 confirms low to medium
# if squeek_vol is between =>5 && <=8 confirms medium to loud
# if squeek_vol is between =>9 && <=10 confirms loud to noisy

	if squeek_volume >= 1 && squeek_volume <= 4
		valid_input = true
		puts "You have rated your hamster's squeek level: #{squeek_volume}; low to medium."

	elsif squeek_volume >= 5 && squeek_volume <= 8
		valid_input = true
		puts "You have rated your hamster's squeek level: #{squeek_volume}; medium to loud."

	elsif squeek_volume >= 9 && squeek_volume <= 10
		valid_input = true
		puts "You have rated your hamster's squeek level: #{squeek_volume}; loud to noisy."
	else
		puts "\nPlease use only numbers 1-10 (1=low & 10=noisy) to rate your hamsters squeek volume."
	end
end
		
# fur color: str
print "\nPlease enter your hamsters fur color: "
fur_color = gets.chomp

# good candidate for adoption > boolean: true = y / false = no
puts "\nWe will adopt out all suitable hamsters into the best possible homes."

# valid_input = false

# until valid_input

print "Do you consider your hamster to be a good candidate for adoption? ( y / n )"
	adoptiom = gets.chomp

	if adoption == "y" || adoption == "Y"
		adoption = true
		puts "Good Candidate"
		# valid_input = true
		# puts "That's great. We will actively pursue adoption for your hamster."

	# elsif adoptable_candidate == "n" || adoptable_candidate == "N"
	# 	valid_input = true
	# 	puts "OK. We welcome your hamster to it's new home at Hamster Haven."
	else
		adoption = false
		puts "Not a good candidate."
		# puts "\nPlease use only y for yes (a good candidate for adoption) or n for no (not a good candidate for adoption)."
	end
# end

# estimated age: .to_i (integer)
#       if unknown = nil (n/a)

puts "\nWe like to celebrate our hamsters birthdays."

# valid_input = false

# until valid_input

print "\nHow old do you think your hamster is? (If unsure, hit return to leave blank.)"
	estimated_age = gets.chomp

	if estimated_age.empty? 
		estimated_age = nil
	else
		estimated_age.to_i
	end
#end
# 	if estimated_age > 0 && estimated_age <= 99
# 		valid_input = true
# 		puts "You have estimated your hamster's age to be: #{estimated_age}."

# 	elsif estimated_age.empty? 
# 		valid_input = true
# 		estimated_age = nil
# 		puts "I am unsure of my hamster's age."

# 	else
# 		puts "\nPlease put an age or '?' if you are unsure of your hamster's age."	
# 	end
# end

puts "="*40

puts "This is the information we have on your hamster:"
puts "Name: #{hamster_name}  (If no name given, we will name the hamster)."
puts "Squeek volume: #{squeek_volume}"
puts "Fur color: #{fur_color}"
puts "Adoption Candidate: #{adoption}"
puts "Age: #{estimated_age||"unknown"}"

puts "="*40

puts "Thank you for visiting Hamster Haven. All donations are appreciated."
