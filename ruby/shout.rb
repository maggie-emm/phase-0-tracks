#Convert module Shout to a mixin version
module Shout
  def voice_pitch(description)
  	puts "That is a #{description} pitched shout!"
  end
end

	class Panic
		include Shout
	end
	
	class Joy
		include Shout
	end

panic = Panic.new
panic.voice_pitch("high")

joy = Joy.new
joy.voice_pitch("low")

# module Shout
#   def self.yell_angrily(words)
#   	words = "!!!" + ":("
#   end

#   def self.yelling_happily(sounds)
#   	sounds = "YAAAAAY" + "!$$!"
#   end
# end

# puts Shout.singleton_methods