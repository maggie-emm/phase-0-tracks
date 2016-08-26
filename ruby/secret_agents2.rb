#Encript method advances each letter by 1; assume lower case; must maintain spaces

# add variable for word to be encrypted
word = "jumped"
#anticipate: dbu

#def method & establish an index
def encrypt(word)
index = 0

# advance each letter by 1 in the alphabet
while index < word.length
	word[index] = word[index].next
	index += 1
end

if word.include? "!"
	word.sub(/["!"]/, '""')
end
	

#return the new word
p word

end

encrypt(word)