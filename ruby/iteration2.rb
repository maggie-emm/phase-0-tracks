# def hi_there
# 	puts "Hi!"
# 	yield("Maggie", "Katie")
# end

# hi_there { |name1, name2| puts "Hey good work #{name1} and #{name2}"}

# dogs = []
# dogs << "trig", "pugs", "stella", "chauncey"
# p dogs

dogs = ["trig", "pugs", "stella", "chauncey"]
puts "original data:"
p dogs

dogs.each { |name| puts "some fav dog names are: #{name}" }
