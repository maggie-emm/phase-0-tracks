#=============== NEW STUFF =======================

# REL 0

class Puppy
# REL 1
  def initialize
    puts "Initializing new puppy instance ..."
  end
# REL 0
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof! " * integer
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    human_years * 7
  end

  def sleep(hours)
    puts "I slept for #{hours} hours!"
  end

end

chihuahua = Puppy.new
chihuahua.fetch('ball')
chihuahua.speak(5)
chihuahua.roll_over
chihuahua.dog_years(4)
chihuahua.sleep(15)

# REL 2
class Fish
    
  def initialize
    puts "Initializing new fish instance...."
  end

  def swim(laps)
    puts "I swim #{laps} laps a day."
  end

  def eat(food)
    puts "My favorite food is #{food}."
  end
end

fish_array = []
p fish_array

counter = 0

# Created just 2 instances for testing purposes.
until counter == 2
  new_name = Fish.new
  fish_array << new_name
  counter += 1
end

p fish_array

fish_array.each do |name|
  new_name.swim(5)
  new_name.eat('shrimp')
end

#Driver Code:
nemo = Fish.new
nemo.swim(8)
nemo.eat('anchovies')

#=============================== OLD STUFF ==================

# class Puppy
# # verify that instance can fetch a ball
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

# #Add speak method that takes an integer, and prints "Woof!" that many times
#   def speak(b)
#   	puts "Woof!" * b
#   end

# #Add roll_over method that just prints "*rolls over*"
#   def roll_over
#   	puts "*rolls over*"
#   end

# #Add a dog_years method that takes an integer (of human years) and converts 
# #that number to dog years, returning a new integer.
#   def dog_years(x)
#   	puts x*7
#   end

# #Add one more trick -- whichever one you'd like. 
#   def go_to_bed
#   	puts "Time for bed"
#   end

# #Add method named initialize & print "Initializing new puppy instance ..."
#   def initialize
#   	puts "Initializing new puppy instance ..."
#   end 
  
# end  

# #driver code at the bottom - initializes instance of Puppy
# Stella = Puppy.new
# #fetch
# Stella.fetch("ball")
# #speak
# Stella.speak(3)
# #roll over
# Stella.roll_over
# #dog_years
# Stella.dog_years(9)
# #bed time
# Stella.go_to_bed

# #-------------------------------------

# #design and implement own class
# class Grans
# #initialize method 
#   def intialize
#   	puts "Initializing new Grans class..."
#   end
# #at least two other instance methods
#   def boy
#   	puts "My fav grandson is KT."
#   end
#   def girls
#   	puts "My 3 fav granddaughters are TyTy, Logy & MJ."
#   end
# end

# #driver code-this prints grans data b4 & after
# grans_count = 0
# names_array = []

# until grans_count == 50
#   p Grans.new
#   grans_count += 1
#   names_array << Grans.new
# end
 
# #p names_array

# #driver code: simpler version?
# #grans_array = []

# #50.times {grans_array << Grans.new }			

# #grans_array.each{|gran|gran.boy}

# #grans_array.each{|gran|gran.girls}

# # #driver code
# # grans_count = 0
# # names_array = []

# # until grans_count == 50
# #  p Grans.new
# #  grans_count += 1
# #  names_array << Grans.new
# # end
 
# p names_array

# names_array.each do |grans|
# 	grans.boy
# 	grans.girls
# end

# ========================================

# Old Stuff

# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(int)
#     int.times do |word| 
#     puts "Woof! "
#     end
#   end

#   def roll_over(string)
#     puts string
#   end

#   def dog_years(int)
#     puts int * 7
#   end

#   def tail_wag(int)
#     puts "I wagged my tail #{int} times today!"
#   end

#   def initialize
#     puts "Initializing new puppy instance ..."
#   end

# end

# lab = Puppy.new

# lab.fetch("ball")
# lab.speak(4)
# lab.roll_over("*rolls over*")
# lab.dog_years(1)
# lab.tail_wag(50)

# class Fruits

#   def skin_color(int)
#     puts "I changed my skin color #{int} times before I was picked!!!"
#   end

#   def initialize
#     puts "Initializing new fruits instance ..."
#     end

#   def food(string)
#     puts "I am turned into a #{string}!"
#   end 

# end

# blueberry = Fruits.new

# blueberry.skin_color(3)
# blueberry.food("pancakes")

# empty_array = []

# i = 0

# until i == 50
#   blueberry = Fruits.new
#   empty_array << blueberry
#   i += 1
# end

# p empty_array

# empty_array.each do |item|
#   blueberry.skin_color(3)
#   blueberry.food("pancakes")
# end