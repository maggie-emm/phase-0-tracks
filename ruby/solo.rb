#design: class Patterns
#patterns have following attributes:
#  sew
#  crochet 
#  knit
#  bead
#  craft


class Patterns

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

#attributes that will not change:
	attr_reader 

#attributes that are accessable to be set & changed:
	attr_accessor :crochet, :sew, :beads
