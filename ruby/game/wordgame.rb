# class WordGame # user1 writes a word & user2 tries to guess it.
# user2 gets a "YEAH" message if guessed correctly & "!YEAH" if incorrect
	
# 	1) 1st user enters a word
# 		A) ask user1 to write a word
# 		  I) length of word is determined
# 		B) based on # letters in word, _ is returned for each letter to 	signify # letters
# 	2) 2nd user attempts to guess the word.
# 		A) ask user2 to guess word or guess by letter
# 		  I)  user2 gets as many guesses as length of the word
# 		  II) if letter is repeated then computer places letter on "_" 	
# 		  	  for each instance of letter in the word(???repeat guesses do not count against the user(can have as many guesses they ???..contradicts message above re: limited # of guesses)
# 		  III) player receives continual feedback on the current state 
# 		  	   of the word; i.e., 
# 		  	  a) for ea letter guessed correctly, the letter is returned 	to it's correct place(s) in the word
# 		  	  b) for each letter guessed incorrectly, the letter is 
# 		  	  	  placed on a "Incorrect Guess" space so user can keep track...(???)
# 			  c) Example: if the secret word is "unicorn", the user will 
# 			  	  start out seeing something like "_ _ _ _ _ _ _", which would beecome "_ _ _ c _ _ _" after the user enters a guess of "c".
# 			  d) user gets a congratulatory message if they win
# 			  e) user gets a taunting message if they lose

class Wordgame

	def initialize
	end

	def game_word