class Santa       #define class
	attr_reader :age, :ethnicity    #refactor getter methods: readable only
	attr_accessor :gender           #refactor setter methods: read & writeable

	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
	end
#Rel 1
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!" 
	end
#Rel 2
	def celebrate_birthday
		@age +=1
		puts "Santa just turned #{@age}!"
	end

	def get_mad_at(reindeer_name)
		puts "Santa's unhappy with #{reindeer_name}"
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
		@reindeer_ranking << reindeer_name
	end	
# setter method
	# def gender=(new_gender)
	#   @gender = new_gender
	# end
# getter methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	def about
		puts "Age: #{@age}"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end
end

#Rel4:
# santas = []
# santa = Santa.new(@gender, @ethnicity)
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("Gingersnap")


#### PRINT!!!!! YEAH!! ######

def checkin_santas(num)
	new_checkin = []
	gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	num.times do |i|
		puts "Santas, check-in here: "
		new_checkin << Santa.new(gender.sample, ethnicity.sample)
		puts "You are Santa number #{new_checkin.length}."
	end
	new_checkin
end
print_new_checkin = checkin_santas(4)
print_new_checkin.each_with_index do |santa, i|
	puts "Santa #{i+1} is a #{santa.ethnicity} #{santa.gender} who is #{santa.age} years old"
end

### DEBUG -------- counter & age
# 	def santas(santas_list)
# 		counter = 1
# 		santas = []
# 		santas_list.times do |santa|
# 			gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# 			ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# 		santa = Santa.new(gender.sample, ethnicity.sample
# 		rand_age = age (140)
# 		puts "Santa #{counter} is a #{santa.ethnicity} #{santa.gender} who is #{santa.age} years old"
# 		puts "Santa's current reindeer preference is:"
# 		p santa.reindeer_ranking
# 		counter += 1
# 	end
# end

# santas(3)

#DEBUG ----- LOOP
# counter = 0

# checkin = gets.chomp.to_i

# until counter == checkin
# 	new_checkin = Santa.new(gender.sample, ethnicity.sample)
# 	new_checkin.age
# 	new_checkin.about
# 		counter =+1
# end

#DRIVER CODE:
# santa = Santa.new("Jack", "agender", "black")
# santa.age(45)
# puts "Santa's helper: #{santa.name}, #{santa.age}, #{santa.gender}, #{santa.ethnicity}"
# puts "Reindeer Assignment: #{@reindeer_ranking}"
# puts "Age correction: #{santa.celebrate_birthday}"
# puts "Reindeer Reassignment: #{santa.get_mad_at(Prancer)}"
# santa.eat_milk_and_cookies
# santa.speak

##DRIVER CODE 2:
# santas = []
# names = ["Jack", "Jill", "Frank", "Nick", "Bob", "Billie", "Sunshine"]
# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# puts "Iterating through Available Santa list..."

# names.each do |name|
# 	santa_gender = gender.sample
# 	santa_ethnicity = ethnicity.sample
# 	puts "Available Santa details: #{name}, #{santa_gender}, #{santa_ethnicity}"
# 	santas << Santa.new(name, santa_gender, santa_ethnicity)
# 	puts "There are now #{santas.length} santas on the Available Santa list."
# 	puts "======"
# 	end
# end

#DRIVER CODE 1:
# santa = Santa.new("Jack", "Bois", "First Peoples")
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("gingerbread")
# p @reindeer_ranking
# santa.age(105)
# santa.about