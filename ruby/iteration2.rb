# def hi_there
# 	puts "Hi!"
# 	yield("Maggie", "Katie")
# end

# hi_there { |name1, name2| puts "Hey good work #{name1} and #{name2}"}

# dogs = []
# dogs << "trig", "pugs", "stella", "chauncey"
# p dogs

# #array.each
# dogs = ["trig", "pugs", "stella", "chauncey"]
# puts "original data:"
# p dogs

# dogs.each { |name| puts "some fav dog names are: #{name}" }

#hash.each
# dogs = {"trig" => "chihuahua", "pugs" => "pug", "chauncey" => "husky"}
# puts "original data:"
# p dogs

# dogs.each { |name, breed| puts "#{name} is a #{breed}" }

#array.map
fruit = ["apple", "orange", "banana"]
puts "Original data:"
p fruit

fruit.map! do |type|
	puts type
	"veggie's rule"
end

puts "After .map! call: "
p fruit