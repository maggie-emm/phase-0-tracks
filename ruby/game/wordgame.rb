# SCOPE OF PROJECT: 
# -class WordGame 
# - user1 writes a word & 
# - user2 tries to guess it.
# - user2 gets a "YEAH" message if guessed correctly & 
#                "Too Bad" if incorrect
# SPECS:
# 	1) 1st user enters a word
# 		A) ask user1 to write a word......................USER INTERFACE: puts & gets.chomp
# 		  I) what to do with that word: determine ........BUS LOGIC: METHOD steps>STR? ARR?
#  						- length:  				.length.to_i
#   					- split by ea char		.each_char
#   														WHAT IF A HASH???
#  			magic_word = gets.chomp
#  			magic_word >> {letter: index}   ?? string.hash   
#  			convert keys from "l" to " - "  ?? string.gsub{|l, _ |}
#   		
# 		B) based on # letters in word, _ is returned for each letter to signify 
#  					# letters.............................BUS LOGIC: METHOD str = .split(' ')
#  																
# 	2) 2nd user attempts to guess the word.
# 		A) ask user2 to guess word or guess by letter..USER INTERFACE
# 		  I)  user2 has no restriction on num guesses.....BUS LOGIC: METHOD while letter_guess != 
#   																		 magic word, keep trypng
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
	attr_accessor :word
	attr_accessor :letter_guess

	def initialize(word)
		@word = word
		@length = length
		@letter_guess = letter_guess
	end

	def magic_word(word)
		@word = Array.new(word.chars)
		@word
	end

	def length(int)
		@length = word.length
		puts "This Magic Word has #{game.length} letters!"
		@length
	end

	def letter_guess(letter)
		letter_guess << []
		letter_guess.keep_if { |l| l =- /[Array.new]/ }
		if @word.include = true
			puts "WOW! Are you a mind reader?"
		else 
			puts "Naah.. at least you're in the same alphabet :( Try again..."
		end
	end

	def about
		puts "Magic_Word: #{@word}"
		puts "Magic_Word length: #{@length}"
		puts "Letter Guess: "
	end
end

# USER INTERFACE:
puts "Welcome to the MAGIC W O R D game!"
puts "And who is the player that will be starting our game?"
name1 = gets.chomp

puts "And who will #{name1} be playing against today?"
name2 - gets.chomp

puts "AMAZING! OK, #{name1} and #{name2}, on your marks, get set, GO!"
puts "#{name1}, please enter a  M A G I C  W O R D: "
word = gets.chomp
game = Wordgame.new(@word)

puts " _ " * game.length
puts "OK, #{name2}, you're up! What is your first letter guess?"
letter_guess = gets.chomp

while game.letter_guess != game.magic_word do
	puts "Type a letter to guess!"
	letter = gets.chomp
	game.letter_location(letter)
	game.letter_guess(letter)
end

#### TEST CODE:
game.magic_word
game.length
game.letter_guess
game.about