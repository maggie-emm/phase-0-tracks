#write program to ask new employees following questions:
#What is your name?
#How old are you?  What year were you born?
#Do you want garlic bread from the cafeteria?
#Are you interested in health insurance?

#Def method for asking these questions:
#Name:
puts "What is your name?"
name = gets.chomp
puts "Hi #{name}. Welcome aboard!"

#age & year_born
puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
year_born = gets.chomp

#order garlic bread for you from the cafeteria?
valid_input = false
until valid_input
puts "Our cafeteria has the best garlic bread. Should we order some for you? (y/n)"
garlic_preference = gets.chomp
  if garlic_preference == "y"
  	valid_input = true
  	puts "Wonderful, I'm sure you will enjoy it."
  elsif garlic_preference == "n"
  	valid_input = true
  	puts "Hmmm. Very interesting. That's good information to know"
  else
  	puts "Please use the y for yes, I want garlic bread or n for no, I don't want garlic bread."
  end
end
  

  







# Check if age computes
#current_year = Time.new.year # Create instance of current year
#if year_of_birth.to_i + age.to_i == current_year
#  age_computes = true  
#  puts "age_computes is true"
#elsif year_of_birth.to_i + age.to_i == current_year - 1
#  age_computes = true # birthday is later this year
#  puts "age_computes is true enough"
#else
#  age_computes = false
#  puts "age_computes is false"
#end

