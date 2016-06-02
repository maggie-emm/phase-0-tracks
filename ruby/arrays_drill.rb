def build_method (p1, p2, p3)
	build_array = [p1, p2, p3]
end

def added_method (p1, p2)
	p1 << p2
end	

new_array = []
p new_array
array_2 = ["color", "width", "style", "margins", "length"]

new_array = array_2
p new_array

new_array.delete_at(2)
p new_array

new_array.insert(2, "style")
p new_array

new_array.delete("color")
p new_array

new_array.include?("style")
p "The new_array includes 'style' element: #{new_array.include?("style")}"

array_3 = [1, 2, 3]
p array_3

combined_arrays = array_2 + array_3
p combined_arrays

p build_method("resume", "cover letter", "references")

p added_method([], "test")

p added_method(["job1", "job2", 5], "test")