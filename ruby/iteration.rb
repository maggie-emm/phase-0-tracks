# REL #1
#1: Declare & populate with relevant data an array & hash
#Array Example:
hobbies = ["biking", "hiking", "gardening"] #puts only 1 set []
p hobbies

#Hash Example:
fun_stuff = {biking: "road_bike", hiking: "mt tam", gardening: "tomatoes"}
p fun_stuff

# #2: Interate thru array & hash using .each, then .map! on array only
#Iterate thru my array using .each
hobbies = ["biking", "hiking", "gardening"] 

hobbies.each { |activity|
	puts "My fav activity is #{activity}" }

#Iterate thru my hash using .each
fun_stuff = {
	biking: "road_bike", 
	hiking: "mt tam", 
	gardening: "tomatoes"
}

fun_stuff.each { |activity, use|
	puts "I enjoy #{activity} on #{use}." }

#Iterate thru my array with .map! (Can't use .map! on hash)
hobbies = ["biking", "hiking", "gardening"] 

	puts "My original hobby array list is:"
	p hobbies

hobbies.map! { |activity|
	puts activity
	activity.next }

puts "After .map! & .next used on hobby array the list changes to:"	
p hobbies
puts "Since using .next, only the last letter of each element in array is changed."

########################################

#Rel # 2
#1: A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5). 
#Array:
count = [5, 10, 15, 20]
p count

count.delete_if { |number| number >= 14 }
p count	

#Hash:
count = {
	5 => "5*1",
	10 => "5*2",
	15 => "5*3",
	20 => "5*4"
}
p count

count.delete_if { |number, word| number >= 14 }
p count


#Rel # 2
#2: A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
#uses a boolean (i.e., keeps = true, removes = false) 
#Array:
count = [25, 30, 35, 40]
p count

count.keep_if { |number| number >= 29 }
puts ".keep_if keeps (n>=29) condition=true & deletes condition=false"
p count

#Hash
count = {
	25 => "5*5",
	30 => "5*6",
	35 => "5*7",
	40 => "5*8"
}
p count

count.keep_if { |number, xtable| number >= 29 }
puts ".keep_if keeps (n>=29) condition=true & deletes condition=false"
p count


#Rel # 2
#3: A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
#Rob, I will start to look @ 3 so we can submit url


#Rel # 2
#4: A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
#req booleean: delete in order of element all conditions=true; when reaches 1st condition=false>stops the filter
#.select! deletes false values
#.take_while passes thru elements until false, then stops, then returns all true

#condition n>79; 65<79=true(keeps filtering & removes 65)
#condition n>79; 70<79=true(keeps filtering & removes 70)
#condition n>79; 75<79=true(keeps filtering & removes 75)
#condition n>79; 80<79=false(stops filter & keeps 80)

#Array
count = [65, 70, 75, 80, 81]
p count

count.reject! { |number| number < 79 }
puts ".reject! filters elements until=false (n<79) condition; true=delete & false=keep"
p count

#Hash
count = {
	65 => "5*5",
	70 => "5*6",
	75 => "5*7",
	80 => "5*8",
	81 => "(5*8)+1"
}
p count

count.reject! { |number, xtable| number < 79 }
puts ".reject! filters elements until=false (n<79) condition; true=delete & false=keep"
p count

#################################################
#THIS IS ALL PRACTICE & #
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
#def feed_critters
#	puts "It's time for dinner, you 3 critters"
#	yield("Trigger", "Puggsy", "Missy") 
#end	

#feed_critters { |name1, name2, name3| puts "Eat your dinner if you want a treat #{name1}, #{name2} and #{name3}" }
#***********
#Another example of assigning values to block in yield line
#def story_telling
#	puts "Let me tell you a story..."
#	yield("ad", "kk")
#end

#story_telling { |son1, son2| puts "#{son1} is in charge of the medi-cal budget for the state of CA and #{son2} is Cam Newton's QB coach. I am so proud of both of my boys." }
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
#USING .map and .map! TO MODIFY AN ARRAY:
#.map alone>no change because .map changes to last line??it's missing:
#jobs = ["budgets", "sales", "proj mgr", "entrepreneur", "chaplain", "teacher"]

		
#puts "I have many years of business experience, including:"
#p jobs

#jobs.map { |skill| }
#HERE I'm MISSING THE LAST LINE OF CODE TO MAKE CHANGE
#Last expression of block must eval to what I want new array to be

#puts "Not sure what I will see...NO CHANGE"
#p jobs
#***********
#Using .map will not immediately chg array but stores value of modified array
#jobs = ["budgets", "sales", "proj mgr", "entrepreneur", "chaplain", "teacher"]
		
#puts "I have many years of business experience, including:"
#p jobs

#jobs.map { |skill| 
#	puts skill    #OLD VALUE = skill
#	skill.next}   #NEW VALUE = skill.next

#puts "Last line shows what I want modified array to be but...NO CHANGE"
#p jobs
#***********
#Using .map! (BANG-Dangerous Version) immediately chg array in place
#jobs = ["budgets", "sales", "proj mgr", "entrepreneur", "chaplain", "teacher"]
		
#puts "I have many years of business experience, including:"
#p jobs

#jobs.map! { |skill|    #.map! (BANG modifies value of array in place)
#	puts skill    #OLD VALUE = skill
#	skill.next}   #NEW VALUE = skill.next>>Only chgs last ltr in word
##WARNING: .next only advances last letter of ea string.
##WARNING: it doesn't advance to the next element in array
#puts "Last line shows what I want modified array to be?NO? Again not on a str of > 1 letter... .next only changes last letter in str to the .next letter. For this challenge must change jobs [] to a single letter"
#p jobs
#***********
#Using .map! and change array to 1 letter str only
#OLD array: jobs = ["budgets", "sales", "proj mgr", "entrepreneur", "chaplain", "teacher"]
#CHANGED ARRAY TO FOLLOWING FOR THE EXERCISE:
#jobs = ["b", "s", "p", "e", "c", "t"]

#puts "I have many years of business experience, including:"
#p jobs

#jobs.map! { |skill|  #.map! (BANG modifies value of array in place)
#	puts skill        #OLD VALUE = skill
#	skill.next}       #NEW VALUE = skill.next

#puts "Last line shows the .next letter?VOILA?"
#p jobs
#***********
#Rel 1>DO THE THING
# INVESTIGATE LATER>>>
#hobbies = []
#hobbies << ["biking", "hiking", "gardening"] #puts 2 sets [[ ]]; not sure what i'm doing wrong.
#p hobbies

#***********
#Rel 1>DO THE THING
#Uncommented starting on line 1
# #1: Declare & populate with relevant data an array & hash
#Array Example:
#hobbies = ["biking", "hiking", "gardening"] #puts only 1 set []
#p hobbies

#Hash Example:
#fun_stuff = {biking: "road_bike", hiking: "mt tam", gardening: "tomatoes"}
#p fun_stuff

# #2: Interate thru array & hash using .each, then .map! on array only
#Iterate thru my array
#Same BIG PROB-see below
#Realized not indexing word. Need to i & += 1 to get entire word
# DUH>>>>
#hobbies = ["biking", "hiking", "gardening"] 
#modified_hobbies = []

#puts "I love to have fun doing these kinds of activities,"
#p hobbies
#p modified_hobbies

#hobbies.each { |activity|
#modified_hobbies << activity.next }

#puts "My modified hobby list is as follows:"
#puts "BIG PROBLEM>>only last letter in str is modified to next letter"
#p hobbies
#p modified_hobbies
#***********
#MMVP
# #2: Interate thru array & hash using .each, then .map! on array only
#Iterate thru my array using .each
hobbies = ["biking", "hiking", "gardening"] 

hobbies.each { |activity|
	puts "My fav activity is #{activity}" }

#Iterate thru my hash using .each
fun_stuff = {
	biking: "road_bike", 
	hiking: "mt tam", 
	gardening: "tomatoes"
}

fun_stuff.each { |activity, use|
	puts "I enjoy #{activity} on #{use}." }

#Iterate thru my array with .map! (Can't use .map! on hash)
hobbies = ["biking", "hiking", "gardening"] 

	puts "My original hobby array list is:"
	p hobbies

hobbies.map! { |activity|
	puts activity
	activity.next }

puts "After .map! & .next used on hobby array the list changes to:"	
p hobbies
puts "Since using .next, only the last letter of each element in array is changed."

############################################################

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
