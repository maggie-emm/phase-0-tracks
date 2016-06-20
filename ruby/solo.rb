#design: class Patterns
#patterns can either be:
#  sew
#  crochet: 
#  knit
#  bead
#  craft


class Patterns

# 3 attributes w/ 2 data types; values vary; i.e.; age
# 1 attr & data_type: crochet: hook_size(str: a, b, c, q), est_time(str), num_colors(int)
# 2 attr & data_type: sew: clothing(boolean); diff_level(str: easy, med, hard)
# 3 attr & data_type: beads: type(str: necklace, bracelet, earring); colors(str)
# 3 methods w/ 1  takes an argument
	# arg=boolean if/else

#attr that will not change:
	attr_reader 

#attr avail to be set & changed:
	attr_accessor :crochet, :sew, :beads
