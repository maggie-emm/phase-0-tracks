class Puppy
# verify that instance can fetch a ball
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

#Add speak method that takes an integer, and prints "Woof!" that many times
  def speak(b)
  	puts "Woof!" * b
  end

#Add roll_over method that just prints "*rolls over*"
  def roll_over
  	puts "*rolls over*"
  end

#Add a dog_years method that takes an integer (of human years) and converts 
#that number to dog years, returning a new integer.
  def dog_years(x)
  	puts x*7
  end

#Add one more trick -- whichever one you'd like. 
  def go_to_bed
  	puts "Time for bed"
  end

#Add method named initialize & print "Initializing new puppy instance ..."
  def initialize
  	puts "Initializing new puppy instance ..."
  end 
  
end  

#driver code at the bottom - initializes instance of Puppy
Stella = Puppy.new
#fetch
Stella.fetch("ball")
#speak
Stella.speak(3)
#roll over
Stella.roll_over
#dog_years
Stella.dog_years(9)
#bed time
Stella.go_to_bed

#-------------------------------------

#design and implement own class
class Grans
#initialize method 
  def intialize
  	puts "Initializing new Grans class..."
  end
#at least two other instance methods
  def boy
  	puts "My fav grandson is KT."
  end
  def girls
  	puts "My 3 fav granddaughters are TyTy, Logy & MJ."
  end
end

#driver code: simpler version?
#grans_array = []

#50.times {grans_array << Grans.new }			

#grans_array.each{|gran|gran.boy}

#grans_array.each{|gran|gran.girls}

#driver code-this prints grans data b4 & after
grans_count = 0
names_array = []

until grans_count == 50
 p Grans.new
 grans_count += 1
 names_array << Grans.new
end
 
p names_array

names_array.each do |grans|
	grans.boy
	grans.girls
end
