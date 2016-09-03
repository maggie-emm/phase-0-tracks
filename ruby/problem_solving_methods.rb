#MP 5.6: Asiya Gizatulina @asyaasha
#REL 0
# define a method
# check an array for a given number
# go through each of the numbers in an array - use .lenght
# use loop while the whole lenght would checked for a number
#if number is there we need to return the index
# if it's not there retur nill

######## GOOD CODE START ##################
#  def search(array, num)
#  	i = 0
# 	while i <= array.length do

#     if array[i] == num
#     		# puts "#{num} is in this array and is indexed at #{i}"
#             # return num
#             return i
#     elsif i == array.length-1
#     		# puts "#{num} is not in this array"
#             return nil
#     else
#     i+=1
# 	end
#  end
# end

#  a = [66, 89, 23, 1]
#  p search(a, 23)
 ########### GOOD CODE END #############

 #>>>>>>>>>> DEBUG >>>>>>>>>>>> included = index(0-not actual index) &
 # !included get 3 msgs and nil

# def search(array, number)
#   n = array.length
# 	index = 0
# 	loop do
# 	  included = false
	  
# 	  (n-1).times do |i|
# 	# while index != array.length do
#     	if array.include?(number)
#     		puts "#{number} is in this array and is indexed at #{index}"
#         	# return number
#     		return index
#     	else 
#     		puts "#{number} is not in this array"
#     		p nil
#  		end
#  	  end
#  	  	break if not included
#  	end
# 		index += 1
# end

# array = [66, 89, 23, 1]
# p search(array, 89)
 
#>>>>>>> DEBUG >>>>>> Getting loop
#  def search(array, number)
# 	i = 0
# 	while i != array.length do

# 	valid_input = false
#     if array.include?(number) == true
#     	return i
#     else 
#     	valid_input == false
# 		break
#     	p nil	
#  	end
#  end
# 		i+=1
# end

# array = [66, 89, 23, 1]
# p search(array, 1)
###################################
# def search(array, number)
# 	i = 0
# 	while i != array.length do

#     if array.include? () == true
#     	return number.index
#     else p nil	
#     end  
#    end
# 		i+=1
# end

# array = [66, 89, 23, 1]
# p search(array, 2)
##################################
#REL 1
#we start with [0,1]
# sum of last two numbers
# push them into the array
# return a new array
# push them inside until the lenght of the array equals the desired length 
###### GOOD CODE START ########
# def fibonacci(random)
# 	start = [0,1]
# 	(random -2).times do |i|
#     start << (start[-1] + start[-2])
# end
# return start
# end

# p fibonacci(6)

# p fibonacci(100)[-1]==218922995834555169026
########### GOOD CODE END ##############

# def fib()
# 	array = [0,1]
# 	sum = array.index(0) + array.index(1)
# 	return sum
# end

# p fib(6)
##########################################
# REL 2
#Bubble sort is simple but time consuming because need to go thru
#an entire list:
# - sort 2 adjacent numb, swap them so they are in descending order,
# - loop thru array, swap ea pair of numbers, until entire list is ordered
def bubble_sort(list)
  return list if list.size <= 1

	loop do
	  swapped = false
	  0.upto(list.size-2) do |n|
	    if list[n] > list[n+1]
	    	list[n], list[n+1] = list[n+1], list[n]
	    	swapped = true
	    end
	  end
	  break unless swapped
	end
	list
end

array = [65,22,22,15,99]
bubble_sort array


############ DEBUG ################
# def bubble_sort(array)
#   n = array.length
#   loop do
#     swapped = false

#     (n-1).times do |i|
#       if array[i] > array[i+1]
#         array[i], array[i+1] = array[i+1], array[i]
#         swapped = true
#       end
#     end

#     break if not swapped
#   end

#   array
# end

# array = [65, 81, 22, 45]
# ##############
# list = [65, 81, 22, 45]
# def bubble_sort(list)
#   return list if list.size <= 1 # already sorted

#   loop do
#     swapped = false
#     0.upto(list.size-2) do |i|
#       if list[i] > list[i+1]
#         list[i], list[i+1] = list[i+1], list[i] # swap values
#         swapped = true
#       end
#     end
#     break unless swapped
#   end
#   list
# end
########################################
# [65,81,22,45].sort

# arr = [65, 81, 22, 45]
# arr.sort
# arr << sorted_arr
# p arr