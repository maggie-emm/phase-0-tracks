#write program to ask new employees following questions:
#What is your name?
#How old are you?  What year were you born?
#Do you want garlic bread from the cafeteria?
#Are you interested in health insurance?

#Def method for asking these questions:
#Name:
puts "What is your name?"
name = gets.chomp

#age & year_born
puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
year_born = gets.chomp

#see if age jives with year born
#get current year

#puts "Hold a moment while we verify your age."
current_year = Time.new.year
	if current_year.to_i - age.to_i == year_born.to_i
		age = true 
	else current_year.to_i - age.to_i != year_born
		age = false
	end

#order garlic bread for you from the cafeteria?
puts "Our cafeteria has the best garlic bread. Should we order some for you? (y/n)"
	garlic_preference = gets.chomp
  		if garlic_preference == "y"
  		   garlic_preference = true
  		else garlic_preference = false
  		end

#health insurance?
puts "Would you like to be enrolled in the company's health insurance?"
	health_insurance_preference = gets.chomp
		if health_insurance_preference == "y"
			health_insurance_preference = true
		else health_insurance_preference = false
		end	

age_computes = true
garlic_preference = true
health_insurance_preference = true

(age_computes && garlic_preference && health_insurance_preference)
puts "Probably not a vampire"

age_computes = false
garlic_preference = false
health_insurance_preference = false

!(age_computes && garlic_preference && health_insurance_preference)
puts "Probably a vampire"