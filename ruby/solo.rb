#design: class Patterns
#patterns have following attributes:
#  sew
#  crochet 
#  knit
#  bead
#  craft

# class Patterns

# #characteristics:
# #attributes that will not change:
# #	attr_reader :name

# #attributes that are accessable to be set & changed:
# 	attr_accessor :name, :hook_size, :est_hours, :clothing
	
# #initialize a characteristic
# 	def initialize(name, hook_size, est_hours)
# 		@name = name
# 		@hook_size = hook_size
# 		@est_hours = est_hours
# 		@clothing = true
# 		puts "Initializing a new pattern: #{name} uses #{hook_size} size hook and will take approximately #{est_hours} hours to make."
# 	end
# end

# 	def name(name)
# 		puts "The pattern name is #{name}."
# 	end

# 	def hook_size(hook_size)
# 		puts "This pattern uses a #{hook_size} hook."
# 	end

# 	def est_hours(i)
# 	 	puts "This pattern will take approximately #{i} hours to make."
# 	end




# #Driver Code********
# pattern_instance = Patterns.new("Sparkly Scarf", "G", 10 )
# pattern.name("Sparkly Scarf", "Cozy Vest", "Easy Baby Blanket")
# pattern.hook_size("G", "F", "Q")
# pattern.est_hours(10, 8, 4)

# class Patterns

# #characteristics:
# #attributes that will not change:
# 	attr_reader :sew

# #attributes that are accessable to be set & changed:
# 	attr_accessor :crochet, :bead	
	
# #initialize a characteristic
# 	def initialize(sew, crochet, bead)
# 		@sew = sew
# 		@crochet = crochet
# 		@bead = bead
# 		puts "Initializing a new #{sew}, #{crochet}, #{bead} pattern."
# 	end
# end

# 	def name(name)
# 		puts "The pattern name is #{name}."
# 	end

# 	def hook_size(hook)
# 		puts "This pattern uses a #{hook} hook."
# 	end

# 	def est_time(time)
# 		puts "This pattern will take approximately #{time}."
# 	end

# 	def num_colors(i)
# 		puts "This pattern will use #{i} colors."
# 	end
# end
# #Driver Code********
# scarf = Patterns.new("Crochet", "Elegant Sparkly Scarf", "G", "6 hours", 3 )


# 3 attributes w/ 2 data types; values vary; i.e.; age
# 1 attr & data_type: 
	# :crochet
	# => hook_size(str: d, f, q)
	# => est_time(str: hours, days)
	# => num_colors(int)
# 2 attr & data_type: 
	# :sew
	# => clothing(boolean: T/F)
	# => diff_level(str: easy, med, hard)
# 3 attr & data_type: 
	# :beads
	# => type_design(str: necklace, bracelet, earring)
	# => base_color(str: silver, gold, bronze)
# 3 methods w/ 1  takes an argument
	# arg=boolean if/else > sew: Is this an item of clothing? (y/n)

#class Car
class Pattern
	
  #attr_reader :year
  #attr_accessor :type, :color
#attributes that don't change:
attr_reader :type

#attributes that change:
attr_accessor :color, :time

# def initialize(type, color, year)
#   @type = type
#   @color = color
#   @year = year
#   puts "Initializing a new car: #{year}, #{color}, #{type}."
# end
def initialize(type, color, time)
	@type = type
	@color = color
	@time = time
	#puts "Initializing a new pattern: #{type}, #{color}, #{time}."
end

# =============DRIVER CODE===================
# def drive(miles)
#   puts "The car drove #{miles} miles."
# end
	def type(type)
		puts "The pattern is #{type}."
	end
# def broke_down(location)
#   puts "The car broke down, dispatch AAA to #{location}."
# end
	def colork(color)
		puts "The pattern is #{color}."
	end
# def car_value(value)
#   puts "The car has a value of #{value}."
# end
	def time(time)
		puts "This pattern takes about #{time} hours to make."
	end
end
# end


# =============DRIVER CODE===================
=begin
sedan = Car.new("Honda", "tan", 1994)
sedan.drive(35)
sedan.broke_down("45th street btw 1st and 2nd Ave.")
sedan.car_value(15000)
=end
#vest = Pattern.new("Sparkly Vest", "Q", 6)

# # USER INTERFACE

# cars = []
# puts "Lets find some cars for you today. How many are you looking for?"
# number = gets.chomp.to_i
patterns = []
puts "How many crochet patterns do you want to research today?"
number = gets.chomp.to_i

# number.times do |number|
# puts "What type of car are you looking for?"
# type = gets.chomp
number.times do |number|
puts "What type of pattern do you want to crochet?"
type = gets.chomp

# puts "What color do you want the car in?"
# color = gets.chomp
puts "What color do you want your item to be?"
color = gets.chomp

# puts "What year do you want?"
# year = gets.chomp.to_i
puts "How many hours do you want to spend?"
time = gets.chomp.to_i

# cars << Car.new(type, color, year)
# end
patterns << Pattern.new(type, color, time)
end

# def print_cars(car_list)
#   puts "Here's a list of cars we found for you today:"
#   puts "========================================="
#   car_list.each do |car|
#     puts "Type: #{car.type}:"
#     puts "Color: #{car.color}"
#     puts "Year: #{car.year}"
#     puts "==========================================="
#   end
# end
def print_patterns(pattern_list)
	puts "Based on your responses, here are the patterns I have chosen for you:"
	puts "="*30
	pattern_list.each do |pattern|
		puts "This pattern is a: #{pattern.type},"
		puts "The Color of the item is: #{pattern.color}, and"
		puts "The approximate Number of Hours it will take to make is: #{pattern.time}."
		puts "="*30
	end
end

# print_cars(cars)
print_patterns(patterns)

