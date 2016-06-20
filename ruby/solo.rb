#design: class Patterns
#patterns have following attributes:
#  sew
#  crochet 
#  knit
#  bead
#  craft


class Patterns

#characteristics:
#attributes that will not change:
	attr_reader :sew

#attributes that are accessable to be set & changed:
	attr_accessor :crochet, :bead	
	
#initialize a characteristic
	def initialize(sew, crochet, bead)
		@sew = sew
		@crochet = crochet
		@bead = bead
		puts "Initializing a new #{sew}, #{crochet}, #{bead} pattern."
	end
end

	def 
#Driver Code********
dress = Patterns.new("Crochet", "Elegant Sparkly Scarf", "G", "6 hours", 3 )


# 3 attributes w/ 2 data types; values vary; i.e.; age
# 1 attr & data_type: 
	# :crochet
	# => hook_size(str: d, f, q)
	# => est_time(str: hours, days)
	# => num_colors(int)
# 2 attr & data_type: 
	# :sew
	# => clothing(boolean: T/F)
	# => diff_level(str: easy, med, hard)
# 3 attr & data_type: 
	# :beads
	# => type_design(str: necklace, bracelet, earring)
	# => base_color(str: silver, gold, bronze)
# 3 methods w/ 1  takes an argument
	# arg=boolean if/else > sew: Is this an item of clothing? (y/n)



