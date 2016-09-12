# SCOPE OF PROJECT: 
# -class WordGame 
# - user1 writes a word & 
# - user2 tries to guess it.
# - user2 gets a "YEAH" message if guessed correctly & 
#                "!YEAH" if incorrect
# SPECS:
# 	1) 1st user enters a word
# 		A) ask user1 to write a word......................USER INTERFACE
# 		  I) length of word is determined.................BUS LOGIC: METHOD .length.to_i
# 		B) based on # letters in word, _ is returned for each letter to signify 
#  					# letters.............................BUS LOGIC: METHOD str = .split(' ')
#  																
# 	2) 2nd user attempts to guess the word.
# 		A) ask user2 to guess word or guess by letter..USER INTERFACE
# 		  I)  user2 has no restriction on num guesses.....BUS LOGIC: METHOD until [].length = 
#   																		 magic word.length
# 		  II) if letter is repeated then computer places letter on each "_" 
#  												..........BUS LOGIC: METHOD if/else	
# 		  III) player receives continual feedback on the current state 
# 		  	   of the word; i.e., 
# 		  	  a) for ea letter guessed correctly, the letter is returned to it's correct 
#  					place(s) in the word........BUS LOGIC: if magic word.letter.include?(true)
#                                                         p @ index
# 		  	  b) for each letter guessed incorrectly, the letter is placed in a 
# 		  	  	  "Incorrect Guess" space so user can keep track...(???)....MVP..
#   					...this not in specs.nice to add.MVP so not to be included @this time
# 			  c) Example: if the secret word is "unicorn", the user will 
# 			  	  start out seeing something like "_ _ _ _ _ _ _", which would beecome "_ _ _ c _ _ _" after the user enters a guess of "c".
# 			  d) user gets a congratulatory message if they win.....
#  											if guessed word = magic word puts "Yeah!"
# 			  e) user gets a taunting message if they lose..........BUS LOGIC METHOD
#  											if guessed word != magic word puts "!Yeah"
# BUSINESS LOGIC:

class Wordgame
	attr_reader :word


	def initialize
		@word = ('')
	end

	def magic_word(word)
		@word.split('')
	end

end

# USER INTERFACE:
puts "Welcome to the MAGIC W O R D game!"
game = Wordgame.new

puts "Please enter a  M A G I C  W O R D: "
	word = gets.chomp
p game.magic_word(@word)
# p @word



#### TEST CODE:
