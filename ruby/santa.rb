class Santa
	attr_reader :age, :ethnicity, :name
	attr_accessor :gender

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

	def celebrate_birthday(age)
		@age +=1
	end

	def get_mad_at(reindeer_name)
	puts "Santa's unhappy with #{reindeer_name}"
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
		@reindeer_ranking << reindeer_name
	end	

	# def about
	# 	puts "Santa Assignment: "
	# 	puts "Name: #{@name}"
	# 	puts "Age: #{@age}"
	# 	puts "Gender: #{@gender}"
	# 	puts "Ethnicity: #{@ethnicity}"
	# 	puts "Reindeer assignment: #{@reindeer_ranking}"
	# end
end

santa = Santa.new("Jack", "agender", "black")
puts "Santa's helper: #{santa.name}, #{santa.age=45}, #{santa.gender}, #{santa.ethnicity}"
puts "Reindeer Assignment: #{@reindeer_ranking}"
puts "Age correction: #{santa.celebrate_birthday}"
puts "Reindeer Reassignment: #{santa.get_mad_at(Prancer)}"
santa.eat_milk_and_cookies
santa.speak