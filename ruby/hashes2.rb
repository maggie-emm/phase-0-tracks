#pseudocode interior designer client intake form info

#welcome and introduction:
puts "Marvelous Melvin; Your Adorable Meshugana Designer"

# Prompt the designer/user for all of this information.
puts "\nWe are delighted you chose us to design your dream home."
puts "\nPlease provide us the following information to better serve your needs and desires."

#create keys (symbols) :client's....:  name(str), age(int), children?(boolean) (y=#(int)), decor theme(str), 
# budget range(int), # bedrooms(int), # bathrms(int), most_imp_room(str), least_imp_room(str), 
# party animal?(boolean)
designer_intake 
	puts "\nPlease provide us the following information to better serve your needs and desires."
	client_info = gets.chomp.to_i
	i = 0

until i == client_info
	puts
= {
	client_name: "John Doe",
	partner_name: "Jane Doe",
	client_age: 87,
	partner_age: 24,
	number_children: 7,
	decor_theme: "Gaudy",
	budget_range: 125000,
	number_bedrooms: 10,
	number_bathrooms: 5,
	most_imp_room: "Master Bedroom",
	least_imp_room: "Kitchen",
	entertain_regularly: true
}

p designer_intake.keys
p designer_intake.value


# Convert any user input to the appropriate data type.

while designer_intake.length <  do
	puts "Enter the requested information (or type 'exit'):"
	# p designer_intake.keys
	input = gets.chomp
	break if input == "exit"
	designer_intake << input
end

#

# Print the hash back out to the screen when the designer has answered all of the questions.


# Give the user the opportunity to update a key (no need to loop, once is fine). 
#     After all, sometimes users make mistakes! If the designer says "none", skip it. 
#     But if the designer enters "decor_theme" (for example), your program should ask 
#     for a new value and update the :decor_theme key. (Hint: Strings have methods that 
#     will turn them into symbols, which would be quite handy here.) You can assume the 
#     user will correctly input a key that exists in your hash -- no need to handle user errors.



# Print the latest version of the hash, and exit the program.




# Be sure to pseudocode, and leave your pseudocode in as comments.