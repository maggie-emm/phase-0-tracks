class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end

	def initialize
		puts "Initializing Santa instance ...".
	end
end

# Driver Code:
test_santa = Santa.new

test_santa.speak
test_santa.eat_milk_and_cookies('gingerbread')