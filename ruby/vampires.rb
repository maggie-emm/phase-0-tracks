#write program to ask new employees following questions:
#What is your name?
#How old are you?  What year were you born?
#Do you want garlic bread from the cafeteria?
#Are you interested in health insurance?

#Rel 1: Interview the Vampire
#Ask following questions:
#Name:
puts "What is your name?"
name = gets.chomp.to_s

#age & year_born
puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

#see if age jives with year born
#get current year

#puts "Hold a moment while we verify your age."
current_year = Time.new.year
	if current_year.to_i - age.to_i == year_born.to_i
		age = gets.chomp.to_i 
	else current_year.to_i - age.to_i != year_born
		age = false
	end
#WORKS	

#order garlic bread for you from the cafeteria?
puts "Our cafeteria has the best garlic bread. Should we order some for you? (y/n)"
garlic_preference = gets.chomp
#WORKS

#health insurance?
puts "Would you like to be enrolled in the company's health insurance?"
health_insurance_preference = gets.chomp
#WORKS		

#Rel 2: Put conditions in place
#Condition 4: Name = Drake Cula or Tu Fang = def vamp
	if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"
	end


#Condition 1 variables: all true/y = prob not vampire
	if (age == true) && (garlic_preference == "y" || health_insurance_preference = "y")
	puts "Probably not a vampire"
	end
#YEAH!! WORKS	

#Condition 2 variables: all false = prob vampire
	if (age == false) && (garlic_preference == "n" || health_insurance_preference = false)
	puts "Probably a vampire"
	end
#YEAH!! WORKS

#Condition 3 variables: all false = prob vampire
	if (age == false) && (garlic_preference == "n") && (health_insurance_preference = "n")
	puts "Almost certainly a vampire"
	end
#BUG: stalls after year born. requires another CR to go on
#BUG: only started when added Condition 4