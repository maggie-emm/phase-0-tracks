#Encript method advances each letter by 1; assume lower case; must maintain spaces

# add variable for word to be encrypted
# word = "drink"
#anticipate: esjol

#def method & establish an index
def encrypt(word)
index = 0

# advance each letter by 1 in the alphabet
while index < word.length
	word[index] = word[index].next
	index += 1
end

if word.include? " "
	word.sub(/["!"]/, '" "')
end
	
#return the new word
p word

end

# encrypt(word)

# decrypt(encrypt("swordfish"))
# word = "drink"

#def decrypt method - reverse the process to return original password
def decrypt(word)
	
#index letters in alphabet
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	letter = 0
	
#index (word) to find each letter's index
while letter < word.length
	if word[letter] != " "
		word[letter] = alphabet[alphabet.index(word[letter]) -1]
	end
	
letter +=1
end

p word
end

# decrypt(word)

#add driver code to ask user encrypt/decrypt? then password name.
puts "Would you like to encrypt or decrypt a password?"

 	answer = gets.chomp

puts "What is the password?"

	word = gets.chomp

if answer == "encrypt"
  encrypt(word)
else
  decrypt(word)
end