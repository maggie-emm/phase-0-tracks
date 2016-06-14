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