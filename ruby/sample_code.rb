#code from slack to investigate as to its value
#rework

################ Loop ###################
number = []
loop do
puts "Give me a number..to stop please type 'done'"
given_number=gets.chomp 

number << given_number
break if given_number == "done"

end
#optional
p number
############ End Loop ##############

client_info = []

puts 'What is your name?"
name = gets.chomp 
client_info.push(name)



client_info = {} 

puts "What is your first name?"
name = gets.chomp 
client_info[:first] = fname 

p client_info



client_info = {
     first: ''
} 

puts "What is your first name?"
name = gets.chomp 
client_info[:first] = fname 

p client_info


#one way to create unique name keys within your program would be to 
#tack an index onto the key name, so then you'd have name1, name2, 
#and so forth, thus creating unique keys. It might look something like this:
client_info = {}

puts "What is your first name?"
name = gets.chomp
index = 1
client_info["first" + index.to_s] = name 
index += 1
p client_info