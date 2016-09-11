module Shout
  def self.yell_angrily(words)
  	words = "!!!" + ":("
  end

  def self.yelling_happily(sounds)
  	sounds = "YAAAAAY" + "!$$!"
  end
end

puts Shout.singleton_methods