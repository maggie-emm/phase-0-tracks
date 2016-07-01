#build case statement for type of craft based on tools used:

craft = "tinkering"

tool_used = case craft

	when "sewing" then "sewing machine & thread"
	when "crocheting" then "hook & yarn"
	when "knitting" then "knitting needles (straight and circular) & yarn"
	when "beading" then "plyers, wire or string & beads"
	when "woodworking" then	"mitre_saw"
	when "plumbing" then "wrench & hammer"
	else 
		"Could be anything that will get the job done."
end

print "The " + craft + " craft uses the following tool(s): " + tool_used

puts "\n++++++++++++++++++++++++++"

sport = "rowing"

assoc_equip = case sport

	when "American football" then "pigskin football, pads & helmets"
	when "football" then "soccer ball, cleats & shin guards"
#tried when "football" || "soccer" then "..."> only takes 1st case variable
	when "soccer" then "soccer ball, cleats & shin guards"
	when "crew" then "sweep or skulling oars and sweep or skulling boat"
	else
		"Could be any equipment; depends on the sport"
end
	
print "The " +  sport + " athlete will most likely use this equipment: " + assoc_equip

puts "\n+++++++++++++++++++++++++++"