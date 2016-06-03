#pseudocode & write program for interior design client form
#identify all client info that will be needed
#include str, i && boolean types of data objects
#MMVP >> Most Minimal Viable Product
     
puts "Please enter your information in the field provided."

clients = {
	:contacts => {
		:name => "Maggie Emm", 
		address:"555 5th St, Fiver, CA, 55555", 
		eml:"5forever@5mail.com"
	}, 
	family:{
		age:"50-59",
		married:"true", 
		children:"2", 
		pets:"3"
	}
}

p clients[:contacts][:name]
p clients[:contacts][:address]
p clients[:contacts][:eml]
p clients[:family][:age]
p clients[:family][:married]
p clients[:family][:children]
p clients[:family][:pets]




#Couldn't get 3rd piece designs:{} to work. Dropped & left 
#contacts & family only
#clients = {
#	:contacts => {
#		:name => "Maggie Emm", 
##		address:"555 5th St, Fiver, CA, 55555", 
#		eml:"5forever@5mail.com"
#		}, 
#	family:{
#		age:"50-59"
#		married:"true", 
#		children:"2", 
#		pets:"3"
#		}
#	designs:{
#		:art_deco => "false", 
#		modern:"false", 
#		country:"false", 
#		mix_n_match:"true", 
#		ikea:"true"
#		}
#}
#        :tn	
#       :city
#          :address
#       :state
#        :zip
#        :eml
#Family  :single
#        :children_y/n ; if y {:name, :age, :gender, :fav_theme}
#        :pets-y/n ; if y  :type, :number
#design  :Colors {light, dark, reds, browns, blues, greens}
#Prefer  :Styles {art_deco, modern, country, mix_n_match, ikea}
#Life	 :Social {dinner_parties, bar_b_q, MLM_events}
#Styles  : Hermit {workaholic, foodie, bookworm}


#use symbols for keys unless a str is needed


emmanuel = {:contacts => {:name =>"Emmanuel Kaunitz", :address => "blah st."}, :family => {:children => false}}

p emmanuel[:contacts][:name]
p emmanuel[:contacts][:address]

p emmanuel[:family][:children]

emmanuel = {:contacts => {name "Emmanuel Kaunitz", :address => "blah st."}, :family => {:children => false}}

p emmanuel[:contacts][:name] = "Maggie"
p emmanuel[:contacts][:name]

p emmanuel[:contacts][:address]

p emmanuel[:family][:children]




#Prompt designer/user for all info
P "Please enter all appropriate fields."

#Convert any user input to appropriate data type






#Print hash back out to the screen when the designer has answered
#   all the questions



#Give the user the opportunity to update a key (no need to loop,
#   once is fine). If designer says "none", skip it. But if designer
#   enters "decor_theme" or any new key, program should ask for new
#   value and update the key. ****See the hint in challenge info***



#Print the latest version of hash & exit program. 