#pseudocode & write program for interior design client form
#identify all client info that will be needed
#client_info: name>str, address>str, eml>str, age>i, married>b, children>i, pets>b

#Greeting:	
puts "Greetings Designer. Please provide me with your name."
	designer_name = gets.chomp
puts "Welcome back, #{designer_name}. \n\rPlease enter your client's information in the field provided.\n\r"

#ask designer questions & allow response; store response as 
#ppropriate data type

client_info = {}

def client_name 
	puts "Client Name:"
	gets.chomp
end
	client_info[:name] = client_name

def client_address
	puts "Address:"
	gets.chomp
end
	client_info[:address] = client_address

def client_eml
	puts "Eml:"
	gets.chomp
end
	client_info[:eml] = client_eml

def client_age
	puts "Age:"
	gets.chomp.to_i
end
	client_info[:age] = client_age

def client_living_status
	puts "Single or Partnered? (s/p)"
	gets.chomp.downcase
end
	client_info[:living_status] = client_living_status
	if client_info[:living_status][0] == "s"
		client_info[:living_status] = "Single"
			puts "Single"
	else
		client_info[:living_status] = "Partnered"
			puts "Partnered"
	end

def client_children
	puts "Any Children? (y/n)"
	gets.chomp.downcase
end
	client_info[:children] = client_children
	if client_info[:children][0] == "y"
		client_info[:children] = "Yes"
			puts "How many?"
				client_info[:numb_children] = gets.chomp.to_i
	else client_info[:children] = "No"
			puts "No Children"
	end

def client_pets
	puts "Any Pets? (y/n)"
	gets.chomp.downcase
end
	client_info[:pets] = client_pets
	if client_info[:pets][0] == "y"
		client_info[:pets] = "Yes"
			puts "How many?"
				client_info[:numb_pets] = gets.chomp.to_i
	else client_info[:pets] = "No"
			puts "No Pets"
	end

puts "\n\rThank you. Here is a confirmation of what you entered for #{client_info[:name]}:"

# #call & print hash 
puts "Client Name: #{client_info[:name]}"
puts "Address: #{client_info[:address]}"
puts "Eml: #{client_info[:eml]}"	
puts "Age: #{client_info[:age]}"
puts "Single or Partnered: #{client_info[:living_status]}"
puts "Children?: #{client_info[:children]}"
puts "Number of Children (if applicable): #{client_info[:numb_children]}"
	if client_info[:numb_children] == "No"
		puts "N/A"
	end
puts "Pets?: #{client_info[:pets]}"
puts "Number of Pets (if applicable): #{client_info[:numb_pets]}"

# #allow designer to make changes to key
puts "Would you like to make any changes? Print 'none' if no changes needed."
updates = gets.chomp

# # Allow designer to modify any data
if updates != "none"
	puts "What would you like to update?"
		updated_key = gets.chomp.to_sym
	puts "Please enter update:"
		updated_value = gets.chomp
		client_info[updated_key] = updated_value
end

# Print new results
p client_info.each {|key, value| puts "#{key}:  #{value}"}