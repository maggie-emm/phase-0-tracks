#define method that creates a hash that consists of grocery items as keys and quantities as values
def create(items, quantity)
    #initiate new hash
    @list = Hash.new
    
    #create an array from the string of items separated by spaces(example: "carrots apples cereal pizza")
    items = items.split(' ')
    
    #create an array from the string on quantities
    quantity = quantity.split(' ')
    
    #insert the items and quantities into the hash as key, value pairs
    @list = {items[0] => quantity[0], 
        items[1] => quantity[1], 
        items[2] => quantity[2],
        items[3] => quantity[3]}
end 
#test create method
create ("carrots apples cereal pizza"), ("10 6 2 1") 
p @list
#define method that will add an item and quatity to the existing hash
def add(item, quantity)
    @list.store(item, quantity)
end
#test add method
add("milk", "1")
p @list
#define a method that will remove an item from the existing hash
def remove(item)
    @list.delete(item)
end
#test remove method
remove("carrots")
p @list
#define a method that will update the existing quantity of an item
def update(item, quantity)
    list2 = {item => quantity}
    @list.merge!(list2)
end
#test update method
update("apples", "4")
p @list
#define a method that will display each pair in a more readable format
def display
	puts "-"*20
	puts "Current groceries to buy:"
    @list.each{|item, quantity| puts "item: #{item}, quantity: #{quantity}"}
    puts "-"*20
end 
#test display method
display