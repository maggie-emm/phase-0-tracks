#pseudocode interior designer client intake form info

#welcome and introduction:
puts "Marvelous Melvin; Your Adorable Meshugana Designer"

# Prompt the designer/user for all of this information.
puts "\nWe are delighted you chose us to design your dream home."
puts "\nPlease provide us the following information to better serve your needs and desires."

#create keys (symbols) :client's....:  name(str), age(int), children?(boolean) (y=#(int)), decor theme(str), 
# budget range(int), # bedrooms(int), # bathrms(int), most_imp_room(str), least_imp_room(str), 
# party animal?(boolean)
# designer_intake = {
# 	adults => {
# 			last_name: "",
# 			first_fname: "",
# 			gender: "",
# 			age: ""
# 		}
# 	end
# end
		


# 	}
# 	client_name: "",
# 	partner_name: "",
# 	client_age: ,
# 	partner_age: ,
# 	number_children: ,
# 	decor_theme: "",
# 	budget_range: ,
# 	number_bedrooms: ,
# 	number_bathrooms: ,
# 	most_imp_room: "",
# 	least_imp_room: "",
# 	entertain_regularly: 
# }

# p designer_intake.keys
# p designer_intake.value


# # Convert any user input to the appropriate data type.

# while designer_intake.length <  do
# 	puts "Enter the requested information (or type 'exit'):"
# 	# p designer_intake.keys
# 	input = gets.chomp
# 	break if input == "exit"
# 	designer_intake << input
# end

#

# Print the hash back out to the screen when the designer has answered all of the questions.


# Give the user the opportunity to update a key (no need to loop, once is fine). 
#     After all, sometimes users make mistakes! If the designer says "none", skip it. 
#     But if the designer enters "decor_theme" (for example), your program should ask 
#     for a new value and update the :decor_theme key. (Hint: Strings have methods that 
#     will turn them into symbols, which would be quite handy here.) You can assume the 
#     user will correctly input a key that exists in your hash -- no need to handle user errors.



# Print the latest version of the hash, and exit the program.

# designer_intake = {
# 	# adults = {
# 			last_name: "",
# 			first_name: "",
# 			gender: "",
# 			age: ""
# 	# }
# }

puts "Please enter the requested information or type 'exit'."
	
def adult_intake
	puts "How many adults will we be getting information on today?"
	number_adults = gets.chomp.to_i
	starting_number = 0
	
until starting_number == number_adults
	puts "First name?"
	first_name = gets.chomp.downcase
	puts "Last name?"
	last_name = gets.chomp.downcase
	puts "Gender?"
	gender = gets.chomp.downcase
	puts "Age?"
	age = gets.chomp.to_i
end

puts "This is the information we have on you. Type 'Return' if anything needs to be changed."
"\n*"*40
p "\nFirst name: #{first_name}"
p "Last name: #{last_name}"
p "Gender: #{gender}"
p "Age: #{age}"

starting_number = starting_number += 1

end
# designer_intake.each do |category, data|

	

# while number_adults
# 	input = gets.chomp
# 	break if input = 'exit'
# 	adults << input
# end


# Be sure to pseudocode, and leave your pseudocode in as comments.