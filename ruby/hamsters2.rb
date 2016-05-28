#Ask the user what the hampster's name is
#Ask user how loud the hamster is on a scale of 1-10
#Ask fur color
#Ask whether the hamster is good candidate for adoption?
#Ask for estimated age
  #if estimated age is blank assign nil

#define the variables
hamster_name = #{name}
squeak_volume = #{volume}
fur_color = #{color}
adoptive_candidate = #{adoption}
estimated_age = #{age}

puts "What is the hamster's name?"
  hamster_name = gets.chomp
puts "How loud is your hamster on a scale of 1-10?"
  squeak_volume = gets.chomp
puts "What color is the hamster's fur?"
  fur_color = gets.chomp
puts "Is your hamster a good candidate for adoption? (y/n)"
  adoptive_candidate = gets.chomp
puts "What is the estimated age of hamster?"
  estimated_age = gets.chomp
  if estimated_age.nil?
    puts "n/a"
  else
    puts "estimated age of your hamster is #{estimated_age}"
  end
puts "Thank you for saving your hamster and bringing them to the sanctuary!"