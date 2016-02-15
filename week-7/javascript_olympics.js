 // JavaScript Olympics

// I paired [with: Megan Swann] on this challenge.

// This challenge took me [1] hours.


// Warm Up
// input: list of atheletes and sport
// output: athlete won their sport's event
// = begin
// Create a list of athletes and their sport
// make a way to win for each athlete 
// print string "Athlete wins sport"
// =end

// input: string
// output: string in reverse
// =begin
// create a string 
// assign to an empty container
// split the string into characters
// reverse the characters in the container
// print the reverse value
// =end

// input: array of numbers
// output: return even numbers
// =begin
// create an empty array
// IF value is divisible by 2
// print number

// input:
// output: constructor code that passes given test
// =begin
// create a function that accepts a new athlete
// create a new function for sport
// create a new function for the quote
// prints name of athlete at the 0 position, sport and quote. 
// =end

// Bulk Up


var name =  ['Sarah Hughes','Michael Phelps'];
var sport = ['Track and Field','Swimming'];


var olympics = {
  win: function(){
    for (var count = 0; count < name.length; count++) {
      console.log(name[count] + " won the gold medal in " + sport[count]);
    }
  }
};
olympics.win();


// Jumble your words
var str = "This is a string";


reverse: function(string) {
  var array = string.split('')
  console.log (array.reverse().join(''))
}
};

string.reverse(str);
// 2,4,6,8
var num_arr = [1,2,3,4,5,6,7,8,9,10,11,12];


var evensOnly ={
  even: function(array) {
    var evens = []  
    for (var i = 0; i < array.length; i++){
        if (array[i]%2 === 0){
          evens.push(array[i]);
        }
      };
    console.log(evens);
    }
};


evensOnly.even(num_arr);

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
    
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// 1) What JavaScript knowledge did you solidify in this challenge?
// I solidified a lot of JavaScript syntax, as well as using functions in JavaScript.
// 2) What are constructor functions?
// Constructor functions are a way of creating functions that can be assigned to other 
// variables.
// 3) How are constructors different from Ruby classes?
// Constructors are different from Ruby classes in that their scope is larger in 
// JavaScript than in Ruby.