#New file for gps2.2
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create hash & assign key, value pairs



groc_list = {}

def create_list (items, quantity)
#	groc_list = {}
	items = items.split(' ')
	quantity = quantity.split(' ')
	items = items.each { |item| puts item.to_sym }
	quantity = quantity.each { |quantity| puts quantity.to_i }
	groc_list = Hash.new { :items => quantity }
end	


create_list ("carrots apples cereal pizza"), ("10 6 2 1") 
puts groc_list


  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list_use the create method as the source
# input: item name and optional quantity
# steps: determine what item & quantity & shovel it in
# output: p

# Method to remove an item from the list
# input: ask for the item we want removed
# steps: locate it & then delete item
# output: p to verify that it is complete

# Method to update the quantity of an item
# input:  ask for the item to be changed
# steps: find item & change to revised qty
# output: p to verify complete

# Method to print a list and make it look pretty
# input: ask/call for list to display
# steps: add formatting to make it easier to see
# output: p displ