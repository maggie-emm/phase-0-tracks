#pseudocode & write program for interior design client form
#identify all client info that will be needed
#client_info: name>str, address>str, eml>str, age>i, married>b, children>i, pets>b

#Greeting:	
puts "Greetings Designer. Please provide me with your name."
	designer_name = gets.chomp
puts "Welcome back, #{designer_name}. \n\rPlease enter your client's information in the field provided.\n\r"

#ask designer questions & allow response; store response & call & print @end
client_info = {}
puts "Client Name:"
	client_info[:name] = gets.chomp
puts "Address:"
	client_info[:address] = gets.chomp
puts "Eml:"
	client_info[:eml] = gets.chomp
puts "Age:"
	client_info[:age] = gets.chomp.to_i
puts "Single or Partnered? (s/p)"
	client_info[:living_status] = gets.chomp
	if client_info[:living_status] == "s"
		client_info[:living_status] = true
			puts "single"
	else client_info[:living_status] = false
			puts "partnered"
	end
puts "Any Children? (y/n)"
	client_info[:children] = gets.chomp
	if client_info[:children] == "y"
		client_info[:children] = true
			puts "How many?"
				client_info[:numb_children] = gets.chomp.to_i
	else client_info[:children] = false
			puts "No Children"
	end
puts "Any Pets? (y/n)"
	client_info[:pets] = gets.chomp
	if client_info[:pets] == "y"
		client_info[:pets] = true
			puts "How many?"
				client_info[:numb_pets] = gets.chomp.to_i
	else client_info[:pets] = false
			puts "No Pets"
	end

puts "\n\rThank you. Here is a confirmation of what you entered for #{client_info[:name]}"

puts "Client Name: #{client_info[:name]}"
puts "Address: #{client_info[:address]}"
puts "Eml: #{client_info[:eml]}"	
puts "Age: #{client_info[:age]}"
puts "Single or Partnered: #{client_info[:living_status]}"
puts "Children?: #{client_info[:children]}"
puts "Number of Children (if applicable): #{client_info[:numb_children]}"
puts "Pets?: #{client_info[:pets]}"
puts "Number of Pets (if applicable): #{client_info[:numb_pets]}"