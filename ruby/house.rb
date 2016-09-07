### HOUSE BUILDER Trng Vid Wk 6 ######## HOUSE MAKER #############################

############## CLEAN CODE ################ NOTATED CODE BELOW #######################

def add_room_to_house!(house, room_name)
    house[room_name] = []
    return true
end

def add_item_to_room!(house, room_name, item_name)
    house[room_name] << item_name 
end

house = {}


def print_house(house)
    puts "*" * 50
    puts "Current house configuraton:"
    house.keys.each_with_index do |room_name, index|
        puts "#{index} - #{room_name}: #{house[room_name]}" 
    end                
    puts "*" * 50
end 


can_add_rooms = true

while can_add_rooms
    puts "Type the name of a room to add (or type 'done'):" 
    room_name = gets.chomp

    break if room_name == 'done'

    can_add_rooms = add_room_to_house!(house, room_name)

    if !can_add_rooms
        puts "Sorry you can't add any more rooms."
    end
    print_house(house)
end

loop do
    puts "Enter the number of the room to add an item to (or type 'done'):"
    inputted_idx = gets.chomp

    break if inputted_idx == 'done'

    room_idx = inputted_idx.to_i
    puts "Enter the item to add: "
    item_to_add = gets.chomp
    add_item_to_room!(house, house.keys[room_idx], item_to_add)

    print_house(house)
end


########## HOW TO TEST A PROGRAM ############  IMPORTANT TO KNOW AND USE #######################

# From Comm Line: touch <file_name>.txt   (vid showed file_name - input)
#               : subl input.txt

# Enter lines of text as if you are a user; the gets.chomp data from code straight down:
# 1 kitchen
# 2 bathroom
# 3 bedroom
# 4 living room
# 5 office
# 6 done
# 7 2
# 8 bed
# 9 3
#10 couch
#11 1
#12 toilet
#13 4
#14 desk
#15 done

# Go back to CL type: Linux command >> cat input.txt (will print the contents of that file)
# HOWEVER, if you use the 'pipe character' you can feed the contents of your input.txt file into your program...
# TYPE: cat input.txt | ruby house.rb |

###################### END of CLEAN CODE ############ START NOTATED CODE #################
# HOUSE MAKER

# Allow user to create a house,
#  determine best data structure>>this is hash for this example
#  create the container hash {} >>>>>> AA 1st thing

# then add rooms, >> 1st thing
# then add items  >> 2nd thing

# House can have up to 5 rooms >>>> put in BUS LOG-part of how house works.
#   can also write as implicit return: >>   if house.keys.length == 5
#                                               false
#                                           else
#                                               house[room_name] = []
#                                               true
#                                           end
# Room can have an unlimited number of items
# AFTER VERIFY BUS LOG works can elim test code and start USER INTERFACE CODE

# BUSINESS LOGIC

# can add functionality by adding a new method here to make things more attractive
# def parse_room_input(inputted_name)
#   clean up input however you want: maybe downcase all letters the capitalize first only, etc
# end  then call it below
# def add_room_to_house!(house, room_name) #original code not dangerous. Added ! to show it is dangerous and is changing house structure as we add rooms
#     return false if house.keys.length == 5 # can 'throw an error' here to say too many rooms have been added
#     house[room_name] = []
#     return true
# end

# def add_item_to_room!(house, room_name, item_name)
#     # puts "Inside item addition method" #err below because when room_added>5 value is nil>>fixed below in .each loop
#     # puts "The hash is: "
#     # p house
#     # when run get this err. DEBUG by adding 2 lines code above, undefined method `<<' for nil:NilClass (repl):8:in `add_item_to_room!
#     house[room_name] << item_name ## can also use .push >>> google diff btwn << & .push
# end

# house = {}

# # USER INTERFACE
# def print_house(house)  # orig p meth
#     puts "*" * 50
#     puts "Current house configuraton:"
#     house.keys.each_with_index do |room_name, index|  #orig: p meth ... no .ea do ## 2nd iteration .ea do |room_name, items|
#         puts "#{index} - #{room_name}: #{house[room_name]}"    # orig: puts "#{room_name}: #{items}"
#     end                
#     puts "*" * 50
# end                     # orig p meth

# # AA let user add rooms
# can_add_rooms = true

# # AB stop loop when rooms cannot be added
# while can_add_rooms
# # AC get room name from user
#     puts "Type the name of a room to add (or type 'done'):" #AD
#     room_name = gets.chomp
# # AE if user done, stop loop
#     break if room_name == 'done'
# # AF otherwise, add room to house
#     can_add_rooms = add_room_to_house!(house, room_name)  #if using parse_room_input method, add in () b4 room: parse_room_input(room_name)
# # Z while testing realized no err msg given if can't add a room:
#     if !can_add_rooms
#         puts "Sorry you can't add any more rooms."
#     end
#     print_house(house)
# end


# # Original PSEUDOCODE: typed in human thought then rearrang for code
# # AA let user add rooms
# # AC get room name from user
# # AD puts "Type the name of a room to add (or type 'done'):"
# # AE if user done, stop loop
# # AF otherwise, add room to house
# # AB stop loop when rooms cannot be added

# # BA let user add items to rooms
# # BB in an infinite loop:
# loop do
# #     BC ask user for number of room they want to add items to *** >> NEED TO UPDATE print method to reflect room number
#     puts "Enter the number of the room to add an item to (or type 'done'):"
#     inputted_idx = gets.chomp
# #     BD if user is done, break
#     break if inputted_idx == 'done'
# #     BE otherwise, add item to room
#     room_idx = inputted_idx.to_i
#     puts "Enter the item to add: "
#     item_to_add = gets.chomp
#     add_item_to_room!(house, house.keys[room_idx], item_to_add)
# #     BF print_house(house)
#     print_house(house)
# end


########## HOW TO TEST A PROGRAM ############  IMPORTANT TO KNOW AND USE #######################

# From Comm Line: touch <file_name>.txt   (vid showed file_name - input)
#               : subl input.txt

# Enter lines of text as if you are a user; the gets.chomp data from code straight down:
# 1 kitchen
# 2 bathroom
# 3 bedroom
# 4 living room
# 5 office
# 6 done
# 7 2
# 8 bed
# 9 3
#10 couch
#11 1
#12 toilet
#13 4
#14 desk
#15 done

# Go back to CL type: Linux command >> cat input.txt (will print the contents of that file)
# HOWEVER, if you use the 'pipe character' you can feed the contents of your input.txt file into your program...
# TYPE: cat input.txt | ruby house.rb |

#==============================
# TEST CODE>>>> Can be deleted once BUS LOGIC TESTED..

# original test>>>>rooms = ["Living room", "bedroom", "bathroom", "kitchen"]
# after added max 5 room qualifier, added 2 more rooms expecting a false return
# rooms = ["Living room", "bedroom", "bathroom", "kitchen", "bedroom2", "bedroom3"]
# # when run rest we see first 5 rooms and any addl rooms simply dropped

# rooms.each do |room|
#     room_added = add_room_to_house!(house, room)
#     add_item_to_room!(house, room, "cat") if room_added #will add cat to ea room
# end

# print_house(house)
#p house #original test code repl with print_house method call

# #RE !: inconsistent as to whether changes that are made inside a function will persist outside function scope
# def change_bool(bool)
#     bool = !bool
# end

# def change_num(x)
#     x += 1
#     p x #this value dies outside scope of function (will show 6 here but 5 when p below)
# end

# def change_arr(arr)
#     copy = arr.dup# duplicate original arr because arr inherently dangerous-changes will change arr
#     copy << 1# part of dangerous test to return original arr
#     return copy# part of dangerous test to return original arr     
#     #arr << 1 ### This was original test
# end

# test_bool = true
# n = 5
# test_array = [2, 3, 4]

# p test_bool
# p n
# p test_array

# change_num(n)
# change_arr(test_array
# change_bool(test_bool)

# p test_bool
#  p n #only changes data inside method scope
#  p test_array   #inherently changes outside function scope when chg inside function
###############################################################

# #from trng vid from:   
# house = {
#   living_room: [
#       'sofa',
#       'lamp'
#       ],
#   kitchen: [
#       'table',
#       'refrig'
#       ],
#   attic: []
# }

# p house[:kitchen]
#       ]
#   :kitchen => [
#       'table',
#       'refrig'
#   ]
#   attic: []
# }

# #how to get to kitchen?>>>    house['Kitchen']

# #methods to call on kitch?>>>   array methods

# #how get refrig>>>>>>>>>>       house['Kitchen'][1] >>> 
# # use anywhere to get to refrig

# #meth call on refrig>>>>>>      string meth

# # how add ghost to attic
# # attic is arr & get with hash key:  house['Attic']
# # can call all arr methods so can call .push ('ghost')
# house[attic:].push('ghost')

# #how add cat to LR?
# house['Living Room'].push('cat')

# #how change cat to dog
# # WRONG:  house['Living Room'].delete('cat').push('dog')
# house['Living Room'][2] = 'dog'

# ====================================== 
# INSTRUCTIONS 

# We made you a nested data structure. Familiarize yourself with the code, then follow the commented instructions at the bottom of this file. This is for your learning only -- it will not be submitted.
# ====================================== 

# airplane = {
#     first_class: {
#         pretty_name: 'First Class',
#         seat_info: {
#             total_seats: 6,
#             seats_available: 4
#         },
#         meals: [
#             "Leg of Pampered Lamb", 
#             "Kale Salad"
#         ]
#     },
#     business_class: {
#         pretty_name: 'Business Class',
#         seat_info: {
#             total_seats: 12,
#             seats_available: 9
#         },
#         meals: [
#             "Sustainably Cultivated Lobster with Housemade Butter", 
#             "Kale Salad"
#         ]
#     },
#     coach: {
#         pretty_name: 'Coach',
#         seat_info: {
#             total_seats: 50,
#             seats_available: 23
#         },
#         meals: []
#     }
# }

# 1.
# Guess the return value of this line:

# airplane[:first_class][:pretty_name]

# Then uncomment the line above and check your guess.

# 2.
# Guess the return value of this line:

# airplane[:business_class][:meals]

# Then uncomment the line above and check your guess.

# 3.
# Guess the return value of this line:

# airplane[:business_class][:meals][1]

# Then uncomment the line above and check your guess.

# 4.
# How will this line affect the data structure?

# airplane[:coach][:meals].push("Sad Plastic Tray of Corn")

# Uncomment the lines above and check your guess by adding a line that prints the new data structure.

# 5.
# How would you reverse the meals list in First Class?

# Add a line of code that does that here.

# 6.
# How would you lowercase the pretty name of one of the classes?

# Add a line of code that does that here.
