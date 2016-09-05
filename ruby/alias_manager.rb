#input real name 

puts "Welcome to Kre8-a-name, trusted by spy's around the globe."
puts "Please enter the first name you want disguised."

#def vowel/consonant
vowels = "aeiou".chars
# vowels_hash = {"a"=> "e" , "e" =>"i", "i" => "o", "o" => "u", "'u"=> "a"}
consonants = "bcdfghjklmnpqrstvwxyz".chars

#split first name, advance a letter by 1, rejoin, capitalize
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

#split last name, advance a letter by 1, rejoin, capitalize
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

puts "Thank you for your service. \rYour new cover name is:"

p joined1 + " " + joined2
