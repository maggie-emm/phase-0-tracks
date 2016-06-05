#Programming using an array but iteration using method while not .each
#	dogs_names = ["trigger", "pugs", "stella", "barney"]
#	index = 0
#		while index < dogs_names.length
#			puts "#{dogs_names[index]} was the best dog I've ever had."
#		index += 1
#	end
#***********
#Variable name in pipes is made up by me-using descriptive name best tho
#Using .each in the array with:  do |name| as block name & end
#   dogs_names = ["trigger", "pugs", "stella", "barney"]
#	dogs_names.each do |name| 
#		puts "#{name} was the best dog I've ever had."
#	end	
#***********
#Using .each in the array with:  do |x| as block name & end
#	dogs_names = ["trigger", "pugs", "stella", "barney"]	
#		dogs_names.each do |x| 
#			puts "#{x} was the best dog I've ever had."
#	end	
#***********
#Programming using a hash with iteration using  .each and p |key| & |value|
#	dogs_names = {
#		"trigger" => "chihuahua"
#		"pugs" => "pug", 
#		"stella" => "mutt", 
#		"barney" => "golden_retriever"
#	}
#		dogs_names.each do |name, breed|
#			puts "#{name}, a #{breed}, was the best dog I've ever had."
#		end	
#***********
#.each method
#["jean", "sam", "jim", "mary", "cheryl", "pat", "step", "anj"].each { |sibling| puts "#{sibling} is a part of my family." }
#***********
#Using x as block's name
#2.times { |x| puts "get off of my desk Missy. When I get to 3, SWAT! #{x+1}" }
#***********
#Naming the block
#4.times { |cookie_count| puts "Cookie Monster has already eaten #{cookie_count + 2} COOOOKIEEEESSS! MMmmmmm Good." }
#***********
#No block or paramenter--it just p the message
#4.times { puts "I have the best grans....1, 2, 3, 4....EVER!" }
#***********
#.times method with array
#grans = ["tyty", "logy", "kt", "mj"]
#number_grans = grans.length
#number_grans.times { |i| puts "#{grans[i]} is my fav gran" }
#***********
#Using the index / while
#grans = ["tyty", "logy", "kt", "mj"]
#	i = 0
#		while i < grans.length
#			puts "My fav grans on this line is #{ grans[i] } "
#		i += 1
#	end
#THIS CERTAINLY WORKS BUT I ONLY HAVE 2 LINES CODE ON Lines 47 & 48
#vs. 5 LINES OF CODE ON Lines 52-56 
# & IT DOES EXACTLY SAME THING!!!
#***********
#Writing a Method that takes a block
#Block won't run without yield keyword
#def feed_critters
#	puts "It's time for dinner, you 3 critters"
#	yield
#end	

#feed_critters { puts "Eat your dinner if you want a treat" }
#***********
#YIELD can be used multiple times & Eat your dinner p 3x
#def feed_critters
#	puts "It's time for dinner, you 3 critters"
#	yield
#	yield
#	yield
#end	

#feed_critters { puts "Eat your dinner if you want a treat" }
#***********
#OR-Make it simpler: YIELD WILL ONLY CAUSE "Eat your dinner... msg to p 3 times"
#def feed_critters
#	puts "It's time for dinner, you 3 critters"
#	3.times { yield }
#end	

#feed_critters { puts "Eat your dinner if you want a treat" }
#***********
#Assign values to block in Yield line
def feed_critters
	puts "It's time for dinner, you 3 critters"
	yield("Trigger", "Puggsy", "Missy") 
end	

feed_critters { |name1, name2, name3| puts "Eat your dinner if you want a treat #{name1}, #{name2} and #{name3}" }
#***********
#Another example of assigning values to block in yield line
def story_telling
	puts "Let me tell you a story..."
	yield("ad", "kk")
end

story_telling { |son1, son2| puts "#{son1} is in charge of the medi-cal budget for the state of CA and #{son2} is Cam Newton's QB coach. I am so proud of both of my boys." }
#***********
#Using .each RETURNS SAME array since no data manipulation occurs here
#.each best for looping thru and p or adding integers to sum.
#DON't USE .each to MODIFY an array.
#USE .map to MODIFY an array 
#jobs = ["budgets", "sales", "proj mgr", "entrepreneur", "chaplain", "teacher"]
#	puts "I have many years of business experience, including"
#	p jobs
	
#jobs.each { |job| 
#	puts job }

#puts "After the .each method, no change is visible."
#p jobs
#***********
#Using .each and .next RETURNS array in SAME ORDER no data manipulation occurs here
#jobs = ["budgets", "sales", "proj mgr", "entrepreneur", "chaplain", "teacher"]
#	puts "I have many years of business experience, including"
#	p jobs
	
#jobs.each { |job| 
#	job = job.next }

#puts "After the .each & .next method, no change is visible."
#p jobs
#***********
#Using .each & .next REQUIRES adding a new array
#jobs = ["budgets", "sales", "proj mgr", "entrepreneur", "chaplain", "teacher"]
#revised_jobs = []
		
#puts "I have many years of business experience, including:"
#p jobs
#p revised_jobs
		
#jobs.each { |skill| 
#revised_jobs << skill.next }
	
#puts "The new array shows skill set however .next only adv last letter of each str, NOT THE ENTIRE WORD in str."
#p jobs
#p revised_jobs
#***********
#Using .each in a hash
#jobs = {"1st" => "budgets", "2nd" => "sales", "3rd" => "proj mgr"}

#jobs.each { |order, skill| 
#puts "The #{order} job I had was #{skill}" }
#***********
#Rel1>DO THE THING



# def dogsnames
#   puts "Here are some great dogs!"
#   yield("Trigger", "Pugs")
# end

# dogsnames { |dog1, dog2| puts "#{dog1} and #{dog2} are cute dogs!" }


# letters = ["a", "b", "c", "d", "e"]

# puts "before each call"
# p letters
# new_letters = []


# modified_letters = letters.map do |letter|
#     puts letter
#     letter.next
# end

# puts "after each call"
# p letters
# p modified_letters




# ###################

# numbers = {1 => 'one', 2 => 'two'}

# numbers.each do |digit, word|
#     puts "#{digit} is spelled out as #{word}"
# end


# simpsons = ["Homer", "Marge", "Bart", "Lisa", "Maggie"]

# actors = {johnny_depp: "Jack Sparrow", :mark_harmon => "Gibbs", :emma_watson => "Hermione" }

# p simpsons
# simpsons.each {|x| puts "#{x} is a primary character on The Simpsons" }
# p simpsons
# simpsons.map! do |x|
#     x += " Simpson"
# end
# p simpsons

# p actors
# actors.each {|x, y| puts "#{x} is most famous for their role as #{y}" }
# p actors


integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p integers

#1

integers.reverse_each do |x|
	if x < 5
		integers.delete(x)
	end
end

p integers
integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#2
integers.select! { |x| x > 5 }

p integers


# integers.each do |x|
# 	p x
# 	if x < 5
# 		integers.delete(x)
# 	end
# 	p integers
# end











# integers.map! do |x|
# 	if x > 5
# 		x
# 	end
# end

# p integers





p integers

#food = [meat, eggs, chicken, fish, veggies, potatoes]

#p food
