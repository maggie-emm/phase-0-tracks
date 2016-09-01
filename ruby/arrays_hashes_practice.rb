designer_application = {
	name: "Delightful Debbie",
	address: "1 Dozen Rozes, Dearly, DA 12345",
	email: "debbie.delightful@dearly.com",
	phone: "123-456-7891",
	fav_shade_blue: 'barely there',
	wallpaper_preference: 'Paisley',
	ombre_is: 'Fierce',
}

p designer_application


# driver code

designer_application[:name] = 'Handful Hattie'
p designer_application

designer_application[:hired] = 'Never'
p designer_application

name = :name
p designer_application.keys

designer_application[:name] + designer_application[:phone]
p designer_application[:name] + designer_application[:phone]

designer_application[:years_experience] = 150
p designer_application

# code wouldn't work in IRB or repl as shown on video:  name: "Abc Def"     got syntax errs
# had to change to.. name: => "Abc Def" 
# after I got it to run on both I changed back to original and it all ran

designer_application[:prev_employer] = "Back to the Future"
p designer_application

puts "***************************"

grades = {
	name: "Jane Doe",
	grade_level: 6,
	fav_subj: "Algebra",
	worst_subj: "Gym",
	hi_grade: "B",
	low_grade: "F",
	hi_grade_subj: "Home Ec",
	low_grade_subj: "Science"
}

p grades
p grades.keys
