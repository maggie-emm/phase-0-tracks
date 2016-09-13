// In comments, pseudocode a function that takes
// a string as a parameter and reverses the string. 
// reverse("hello"), for example, should return "olleh". 
// This isn't a task specific to JavaScript -- your 
// pseudocode should be in plain English and use phrases 
// like "for each" instead of JavaScript-specific terms. 
// Remember that you can add strings in JavaScript, 
// so '' + 'a' would result in the string 'a'. 
// This is the most valuable skill in programming: 
// being able to think through a problem logically.

// declare a variable string called "Hello!"
var str = "Hello!";
// identify the length of the string
// go thru string to break out each letter in the string indiv
// identify the index order of the letters; i.e., H=0, e=1, etc
for (var i = 0; i < str.length; i++) {
	console.log(str[i]);
}

// reverse the index order of the letters; start with length-1
//for (str i = 0; i >= str.length; i -1) {
//	console.log(str[i]);
//}
// print the resulting new string

