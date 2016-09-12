require_relative 'wordgame'

describe Wordgame do
	let(:word("cat", :letter_guess) {Wordgame.new(word)}

	it "stores the magic_word given on initialization" do
		expect(game.magic_word).to eq [magic_word(chars)]
	end

	it "parses magic_word chars into new Array" do
		game.magic_word(word)
		expect(game.magic_word).to eq ["c", "a", "t"]
	end

	it "identifies length of magic_word" do
		game.length(int)
		expect(game.length).to eq (3)
	end 
		
	it "identifies letters guessed by name2" do
		game.letter_guess(letter)
		expect(game.letter_guess).to eq ("a", "e", "t", "b", "c")
	end 
end