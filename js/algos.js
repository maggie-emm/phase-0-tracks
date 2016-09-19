// Rel0: Find Longest Phrase
// write a function to take a str array
var phrases = ["Panthers", "Panthers Rock", "Best QB coach in the league"];
// spec: returns longest word or phrase in array
// get length of arr
phrases.length;
// # items in var phrases
phrase_length = [];

var item1 = phrases[0];
var x = item1.length;
phrase_length.push[x];
var item2 = phrases[1];
var y = item2.length;
phrase_length.push[y];
var item3 = phrases[2];
var z = item3.length;
phrase_length.push[z];
// expect longest phrase.to eq "Best QB coach..."
// to identify longest, push length integers into arr
//    phrase_length = [] then id highest digit
// function compare(item1, item2, item3) {
// 	// 
// 	console.log("The longest phrase is: ");
// }


// add driver code
console.log(phrases);
console.log(phrases.length);
console.log(item1); 
console.log(item1.length);
console.log(phrase_length[0]);
console.log(item2); 
console.log(item2.length);
console.log(phrase_length[1]);
console.log(item3); 
console.log(item3.length);
console.log(phrase_length[2]);


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