#create file for prep of gps session 9/5 @ 7pm PDT

# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash for groc_list (need item, quantity (key, value)) 
# list = "apples bananas broccoli" used on 41

  def create_list(items)
  	groc_list = {}
  	indiv_items = items.split(' ')
  	indiv_items.each do |item|
  		puts "#{item}: How many?"
  		groc_list[item] = 1
  	end
   		groc_list
  end



  # set default quantity = 1
  	# if quantity.empty? = 1	
  	# end
  # print the list to the console: puts groc_list hash[can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash-item & quantity; key,value

# Method to add an item to a list
	def add_item(item_name, quantity, groc_list)
	  groc_list[item_name] = quantity
	  groc_list
	end


# input: item name and optional quantity; apple: 5, bananas: 2, broccoli: 1
# steps:  add new items & values into hash
# output:p item: quantity

# Method to remove an item from the list

	def delete_item(item_name, groc_list)
		groc_list.delete(item_name)
		groc_list
	end
# input: identify item to delete (don't need quantity)
# steps: .delete key
# output: p hash to verify key is deleted

# Method to update the quantity of an item
	def update_quantity(item_name, quantity, groc_list)
		groc_list[item_name] = quantity
		groc_list
	end
# input: ask if anything needs to be changed; if so, what item (key)
# steps: push << changes into hash
# output: p hash 

# Method to print a list and make it look pretty
	def print_list(item_name, quantity, groc_list)
		groc_list.each do |item_name, quantity|
			puts "#{item_name}: #{quantity}"
			groc_list[item_name][quantity]
		end
		groc_list
	end

# input: puts stmnt that this is final list
# steps: "*"*50 to sep and identify new list below
# output: p key, value pair in hash

# ##DRIVER CODE#####
# p groc_list
p groc_list = create_list("apples bananas broccoli")
p add_item("apples", 5, groc_list)
p add_item("lemonade", 2, groc_list)
p add_item("tomatoes", 3, groc_list)
p add_item("onion", 1, groc_list)
p add_item("ice cream", 4, groc_list)
p delete_item("broccoli", groc_list)
p update_quantity("bananas", 7, groc_list)
p ("*" * 10) + "Current Grocery List" + ("*" * 10)
p groc_list
p "*" * 40
# groc_list.each {|key, value| puts "#{item_name} buy #{quantity}" }
# p groc_list[item_name][quantity]

#*************************** REFLECT ***********************************
# What did you learn about pseudocode from working on this challenge?
# I learned how mush easier it is to focus when the pseudocode identifies
#     action to take. It really helped to illustrate the importance of
#     identifying the parameters I really like the format:
#     METHOD TO:
#     INPUT:
#     STEPS:
#     OUTPUT:

# What are the tradeoffs of using arrays and hashes for this challenge?
# Although it seemed for the beginning that a hash would be the best 
# 	  data structure to use, it seemed overwhelming and confusing.
#     My guide was instrumental in helping to keep me on track when
#     i started off on tangents.

# What does a method return?
#  It returns a value by default; specifically, the value of the last statement. 

# What kind of things can you pass into methods as arguments?
# Method arguments are based on the paramenters you define when you create the method.
#    For instance, when you: def method_name, depending on your desired output, you specify the # of paramenters
#    you are passing into the method. Then when you call the method, you need to make sure you identify the same
#    # of arguments as your paramenters otherwise you get an error message (expected 0 arguments got 2, kind of thing)

# How can you pass information between methods?
# If you intialize a class you can use instance variables which can then be passed in a global scope of the program.

# What concepts were solidified in this challenge, and what concepts are 
#still confusing?
# I definitely got a clear understanding of declaring my parameters by asking myself what am I passing into the method.
# I still find myself struggling though with identifying what all the steps are and the methods to call to accomplish
#    those steps.

