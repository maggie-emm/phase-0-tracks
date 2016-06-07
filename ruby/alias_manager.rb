#input real name 
puts "Welcome to Kre8-a-name, trusted by spy's around the globe.\rPlease enter the first name you want disguised."

vowels = "aeiou".chars
consonants = "bcdfghjklmnpqrstvwxyz".chars
# vowels_hash = {"a"=> "e" , "e" =>"i", "i" => "o", "o" => "u", "'u"=> "a"}

#split, swap first/last name, advance a letter, rejoin
first_name = gets.chomp.downcase.split('')
first_code = first_name.map! do |ltr|
  if vowels.include?(ltr) && ltr != "u"
    # ltr = vowels_hash[ltr]
    index = vowels.index(ltr)
    ltr = vowels[index + 1]
  elsif ltr == "u"
    ltr = "a"
  elsif ltr != "z"
    index = consonants.index(ltr)
    ltr = consonants[index + 1]
  else
    ltr = "b"
  end
end
joined1 = first_code.join.capitalize
#p joined1

puts "Please enter the last name. Type 'quit' when done."
last_name = gets.chomp.downcase.split('')
last_code = last_name.map! do |ltr|
  if vowels.include?(ltr) && ltr != "u"
      # ltr = vowels_hash[ltr]
      index = vowels.index(ltr)
      ltr = vowels[index + 1]
  elsif ltr == "u"
      ltr = "a"
  elsif ltr != "z"
      index = consonants.index(ltr)
      ltr = consonants[index + 1]
  else
      ltr = "b"
  end
end
joined2 = last_code.join.capitalize
#p joined2

#p return msg and code name for user
puts "Thank you for your service. \rYour new cover name is:"

p joined1 + " " + joined2