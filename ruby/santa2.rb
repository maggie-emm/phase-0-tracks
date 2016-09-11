class Santa #define class

	def initialize #method 1
		puts "Initializing Santa instance ..."
	end

	def speak #methods 2 & 3
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie="gingerbread")
		puts "That was a good #{cookie}cookie!"
	end
end

#Driver Code Rel 0:
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies