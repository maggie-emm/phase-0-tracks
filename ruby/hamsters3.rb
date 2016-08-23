#get hamster data

puts "What is the hamster name?" #(string)
hamster_name = gets.chomp 

puts "What is the hamster volume level?" # (int)
volume_level = gets.to_i

puts "What is the hamster's fur color?" # (string)
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)" #(boolean)
candidate_answer = gets.chomp
if candidate_answer == "y"# || "yes" || "Y" || "Y"
  good_candidate = true
elsif candidate_answer == "n" #|| "no"
  good_candidate = false
# else
# 	puts "I didn't understand your answer. Please use 'y' or 'n'."
end

puts "How old is the hamster?"  #(int)
hamster_age = gets.to_i
if hamster_age == 0
	hamster_age = nil
end

puts "Thank you for sharing. Here is the data you provided us:"
puts "Hamster name: #{hamster_name}"
puts "Volume Level: #{volume_level}"
puts "Fur color: #{fur_color}"
puts "Good candidate for adoption? #{candidate_answer}"
puts "Hamster age: #{hamster_age}"