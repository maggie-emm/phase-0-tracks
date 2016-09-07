######################## NEW CODE #####################
# SPECIES ------------------------
# Puppy

# CHARACTERISTICS ----------------
# Fur: soft, short
# Size: small
# Teeth: sharp, pointed
# Name: varies
# Color: varies
# Bark: high-pitched

# BEHAVIOR -----------------------
# Jump
# Bite
# Sleep
# Eat
# Play

###### IRB REL 2 #############
# irb(main):008:0> duchess = Puppy.new
# => #<Puppy:0x007f8581193300>
# irb(main):009:0> fido = Puppy.new
# => #<Puppy:0x007f858118aa98>
# irb(main):010:0> spot = Puppy.new
# => #<Puppy:0x007f8581183040>
# irb(main):011:0> spot.class
# => Puppy
# irb(main):012:0> duchess == fido
# => false
# irb(main):013:0> fido.instance_of?(Array)
# => false
# irb(main):014:0> fido.instance_of?(Puppy)
# => true
# irb(main):015:0> spot.play_dead
# NoMethodError: undefined method `play_dead' for #<Puppy:0x007f8581183040>
#        	from (irb):15
#        	from /Users/maggie-emm/.rbenv/versions/2.1.5/bin/irb:11:in `<main>'
# irb(main):016:0> str = String.new
# => ""
# irb(main):017:0> str.length
# => 0
# irb(main):018:0> str.empty?
# => true
# irb(main):019:0> str += "huh."
# => "huh."
# irb(main):020:0> str = "some string"
# => "some string"
# irb(main):021:0> greeting = String.new("hello")
# => "hello"
# irb(main):022:0> greeting.length
# => 5
# irb(main):023:0> greeting.upcase
# => "HELLO"
# irb(main):024:0>

########################### OLD CODE ####################
# PUPPY CLASS DESIGN
# SPECIES ------------------------
# Puppiulous Socuteofus

# CHARACTERISTICS ----------------
# Number of legs: 4
# Friendly: yes
# Eye count: 2
# Name: varies
# Color: varies
# Activity level: high energy


# BEHAVIOR -----------------------
# Jump
# Lick
# Bite
# Eat
# Sleep