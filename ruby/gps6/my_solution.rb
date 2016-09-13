# Virus Predictor

# I worked on this challenge with: Jessica Ellison @Jesscodes.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# 'require_relative' is used to load a file from the directory of where that program resides. Whereas, 'require' uses an absolute path.
#
require_relative 'state_data'

class VirusPredictor

# this is initializing a new instance of VirusPredictor class, taking in the the three parameters of state_of_origin, population_density, population
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

# Calling pn predicted deaths and the speed of spread
 def virus_effects
   predicted_deaths   #removed parameters that were the 3 inst var above: they are redun
   speed_of_spread    #removed parameters. NOT Needed
 end

 private # Below this, everything is private and and cannot be called outside of the class.

# Taking in population_density, population, and state as parameters and returns the amount of predicted deaths based on population factors
 def predicted_deaths    #removed parameters that were local not even inst ones
   # predicted deaths is solely based on population density
   if @population_density >= 200
     number_of_deaths = (@population * 0.4).floor
   elsif @population_density >= 150
     number_of_deaths = (@population * 0.3).floor
   elsif @population_density >= 100
     number_of_deaths = (@population * 0.2).floor
   elsif @population_density >= 50
     number_of_deaths = (@population * 0.1).floor
   else
     number_of_deaths = (@population * 0.05).floor
   end

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end

# Taking in population_density and state as parameters and returns the speed of spread.
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
   speed = 0.0

   if @population_density >= 200
     speed += 0.5
   elsif @population_density >= 150
     speed += 1
   elsif @population_density >= 100
     speed += 1.5
   elsif @population_density >= 50
     speed += 2
   else
     speed += 2.5
   end

   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Release 4: Create a report for all 50 states in a DRY way.
STATE_DATA.each do |state_name, pop_hash|
 state_init = VirusPredictor.new(state_name,pop_hash[:population_density], pop_hash[:population])
 state_init.virus_effects
end


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The state_name uses the {"string" => {pop_hash}} key as a string with hash rocket syntax 
# while the pop_hash uses the symbol after the key name so no hash rocket required.

# What does require_relative do? How is it different from require?
# 'require_relative' is used to load a file from the directory of where that program resides. 
# Whereas, 'require' uses an absolute path.

# What are some ways to iterate through a hash?
# .each; .each_key, .each_pair; .each_value

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# How cool it was to remove the instance variables because they were already defined in the
# Private methods

# What concept did you most solidify in this challenge?
# The value of instance variables and that it isn't necessary to define them as parameters
# in methods once you've initiated them in def initialize method.

#=========================================================================

# ORIGINAL FILE DATA; NOT DRY
# require_relative 'state_data'

# class VirusPredictor

#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

#   private

#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# #=======================================================================
# # Reflection Section