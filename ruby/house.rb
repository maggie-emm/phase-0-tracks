### HOUSE BUILDER Trng Vid Wk 6 #######

# HOUSE MAKER

# Allow user to create a house,
#  determine best data structure>>this is hash for this example
#  create the container hash {} >>>>>> AA 1st thing

# then add rooms, >> 1st thing
# then add items  >> 2nd thing

# House can have up to 5 rooms >>>> put in BUS LOG-part of how house works
# Room can have an unlimited number of items

# BUSINESS LOGIC

def add_room_to_house!(house, room_name) #original code not dangerous. Added ! to show it is dangerous and is changing house structure as we add rooms
    return false if house.keys.length == 5 # can 'throw an error' here to say too many rooms have been added
    house[room_name] = []
    return true
end

house = {}

# USER INTERFACE
def print_house(house)
    p house
end

# TEST CODE

# original test>>>>rooms = ["Living room", "bedroom", "bathroom", "kitchen"]
# after added max 5 room qualifier, added 2 more rooms expecting a false return
rooms = ["Living room", "bedroom", "bathroom", "kitchen", "bedroom2", "bedroom3"]
# when run rest we see first 5 rooms and any addl rooms simply dropped

rooms.each do |room|
    add_room_to_house(house, room)
end

print_house(house)
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
# 	living_room: [
# 		'sofa',
# 		'lamp'
# <<<<<<< HEAD
# 		],
# 	kitchen: [
# 		'table',
# 		'refrig'
# 		],
# 	attic: []
# }

# p house[:kitchen]

# =======
# 		]
# 	:kitchen => [
# 		'table',
# 		'refrig'
# 	]
# 	attic: []
# }

# #how to get to kitchen?>>>  	house['Kitchen']

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
>>>>>>> 3a2bb1520bcf9980cf8c6a8887d92ee1c1d50909
