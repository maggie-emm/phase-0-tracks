############## NEW STUFF ###########################

# Define Santa Class:
class Santa
# Add code below class declaration to check can intialize class & call methods


# santa.speak("Ho, ho, ho! Haaaappy holidays!")
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


	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance ..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end

#setter method
	def gender
		@gender
	end
#end setter method
#getter methods
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	def name
		@name
	end
#end getter methods
	def celebrate_birthday(age)
		@age +=1
	end

	def get_mad_at(reindeer_name)
		reindeer_name << reindeer_ranking.last

	def about
		puts "Name: #{@name}"
		puts "Age: #{@age}"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer assignment: #{@reindeer_ranking}"
	end
end


##DRIVER CODE 2:
santas = []
names = ["Jack", "Jill", "Frank", "Nick", "Bob", "Billie", "Sunshine"]
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "Iterating through Available Santa list..."

names.each do |name|
	santa_gender = gender.sample
	santa_ethnicity = ethnicity.sample
	puts "Available Santa details: #{name}, #{santa_gender}, #{santa_ethnicity}"
	santas << Santa.new(name, santa_gender, santa_ethnicity)
	puts "There are now #{santas.length} santas on the Available Santa list."
	puts "======"
	end
end

#DRIVER CODE 1:
santa = Santa.new("Jack", "Bois", "First Peoples")
santa.about
santa.speak
santa.eat_milk_and_cookies("gingerbread")
p @reindeer_ranking
santa.age(105)
santa.about