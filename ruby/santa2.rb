class Santa #define class

	def initialize(gender, ethnicity) #method 1
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak #methods 2 & 3
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie="gingerbread")
		puts "That was a good #{cookie} cookie!"
	end

	def reindeer_ranking(reindeer_order)
		@reindeer_ranking = reindeer_order
	end

	def age
		@age = age
	end

	def about
		puts "This santa is #{@age}, #{@gender} and #{@ethnicity}"
	end
end

#Driver Code Rel 0:
santa = Santa.new("f", "?")
p santa.about
p santa.speak
p santa.eat_milk_and_cookies("snickerdoodle")
p santa.reindeer_ranking(reindeer_order)
p @age = 45
p santa.about