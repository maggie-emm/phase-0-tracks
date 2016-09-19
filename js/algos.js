// Rel0: Find Longest Phrase
// write a function to take a str array
var phrases = ["Panthers", "Panthers Rock", "Best QB coach in the league"];
// spec: returns longest word or phrase in array
// get length of arr
phrases.length; 
// # items in var phrases
var item1 = phrases[0];
var item2 = phrases[1];
var item3 = phrases[2];
// expect longest phrase.to eq "Best QB coach..."
// var longest_phrase = () {
	
// }

// add driver code
console.log(phrases);
console.log(phrases.length);
console.log(item1); 
console.log(item1.length);
console.log(item2); 
console.log(item2.length);
console.log(item3); 
console.log(item3.length);


// Rel1: Find Key-Value Match
// write a function that checks 2 object to see
//   if at least 1 key-value pair matches both objects
// allow additions to file at top and test at bottom
// expect when function called to check match .to eq= true
// i.e.,{name: "Al", age: 54} || {name: "Tip", age:54}=>true
// add driver code

// Rel2: Generate Random Test Data
// write function takes a num as the length of an array
//   of a string with that number of elements
// expect arr of 3 elements of 3 randomly generated words
//    specs: random word range (1..11) letters
// NOTE: involves generating random number
// add driver code: 10 times: generate arr, print arr, 
//    feed array to Longest Word function, prints result