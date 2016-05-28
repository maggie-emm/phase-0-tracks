#ask user for password
#user enters a word then returns an encripted form of that word
#encripted form will be identified as the next letter in the alphabet 
#    from the index letter
#example: user types "dog"; next letters in alpha>d+1=e; o+1=p; g+1=h
#method every letter of string +1 letter forward
#establish encription string and identify as "dog"
#index "dog" d=0; o=1; g=2
#advance +1 index 

#define variables
index = 0
password = "family"

#define method
while index < password.length
 password[index] = password[index].next
 index += 1
end

#call method
p password
