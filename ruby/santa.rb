#define Santa class w/three instance methods:
class Santa
#initialize method that prints "Initializing Santa instance ...".
	def initialize
		puts "Initializing Santa instance ..."
	end
#speak method that will print "Ho, ho, ho! Haaaappy holidays!"	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
#eat_milk_and_cookies method-takes a cookie type (example: "snickerdoodle")
#as a parameter and prints "That was a good <type of cookie here>!" 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
#code below your class declaration to check that you're able to initialize
#a Santa instance and call its methods.	
	def check
		puts

end

#driver code 