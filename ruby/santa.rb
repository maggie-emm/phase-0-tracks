############## NEW STUFF ###########################

# Define Santa Class:
class Santa
# # Add code below class declaration to check can intialize class & call methods


# # santa.speak("Ho, ho, ho! Haaaappy holidays!")
# santa.eat_milk_and_cookies("gingerbread")
# Create 3 Instance Methods:
#  - speak: print "Ho, ho, ho! Haaaappy holidays!"
#  - eat_milk_and_cookies: takes cookie type as a paramenter(gingerbread) and
#        prints: "That was a good <type of cookie here>!" 
#  - initialize: prints: "Initializing Santa instance ...".

# REL 1> Give Santa Attributes
#   - gender & ethnicity on initialization
#   - reindeer_ranking, an array of reindeer from most preferred to least preferred	
#       - not passed in initialization: default value: ["Rudolph", "Dasher", "Dancer", 
#                        "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#   - age: not passed in initalization: default: 0


	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end

end

# DRIVER CODE:
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("gingerbread")

# test_santa = Santa.new
# test_santa.speak
# test_santa.eat_milk_and_cookies("gingerbread")















































# ################### OLD STUFF ########################

# #define Santa class w/three instance methods:
# class Santa
	
# #initialize method that prints "Initializing Santa instance ...".
	
# 	attr_reader :ethnicity, :reindeer_ranking
# 	attr_accessor :gender, :age
	
# 	def initialize(gender, ethnicity)
# 		@gender = gender
# 		@ethnicity = ethnicity
# 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# 		@age = 0
# 		puts "Initializing Santa instance ..."
# 	end
	
# #speak method that will print "Ho, ho, ho! Haaaappy holidays!"	
# 	def speak
# 		puts "Ho, ho, ho! Haaaappy holidays!"
# 	end
	
# #eat_milk_and_cookies method-takes a cookie type (example: "snickerdoodle")
# #as a parameter and prints "That was a good <type of cookie here>!" 
# 	def eat_milk_and_cookies(cookie)
# 		puts "That was a good #{cookie} cookie!"
# 	end
	
# 	def about
# 		puts "Statistics on our new Santa: #{@ethnicity} #{@gender}"
# 	end

# 	def birthday
# 		@age = @age + 1
# 	end
		
# 	def get_mad_at(reindeer_name)
# 		puts "Santa's unhappy with #{reindeer_name}"
# 		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
# 		@reindeer_ranking << reindeer_name
# 		p @reindeer_ranking
# 	end	
	
# #code below your class declaration to check that you're able to initialize
# #a Santa instance and call its methods.	
# end

# # #getter
# # 	def gender
# # 		@gender
# # 	end
# # 	def ethnicity
# # 		@ethnicity
# # 	end
# # 	def age
# # 		@age
# # 	end
# # #setter
# # 	def gender=(new_gender)
# # 		@gender = new_gender
# # 	end
# # 	def ethnicity=(new_ethnicity)
# # 		@ethnicity = new_ethnicity
# # 	end
# # 	def age=(rand_age)
# # 		@age = rand_age
# # 	end
	
# #driver code
# santas = []
# santa = Santa.new(@gender, @ethnicity)
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("Gingersnap")


# 	def santas(santas_list)
# 		counter = 1
# 		santas_list.times do |santa|
# 			gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# 			ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# 		santa = Santa.new(gender, ethnicity)
# 		rand_age = rand(140)
# 		puts "Santa #{counter} is a #{santa.ethnicity} #{santa.gender} who is #{santa.age} years old"
# 		puts "Santa's current reindeer preference is:"
# 		p santa.reindeer_ranking
# 		counter += 1
# 	end
# end
#
#santas(3)