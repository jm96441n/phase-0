/*
Gradebook from Names and Scores
I worked on this challenge [with: Mike London]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], 
               [85, 80, 90, 90],  
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

//Psuedocode
// Create a variable equal to a new object
// Create a for loop through the two arrays assigning those values to a new object
// 



// __________________________________________
// Write your code below.

// var gradebook = {};
// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]] = {};
// };

// var count = 0;
// for (var x in gradebook) {
//   gradebook[x].testScores = scores[count];
//   count++;
// }

// gradebook.addScore = function(name, score){
//   gradebook[name].testScores.push(score);
// }
// function average(array) {
//   var sum = array.reduce(function(a,b){
//     return a+b
//   });
//   var avg = sum/(array.length);
//   return avg

// }
// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores);
// };


// __________________________________________
// Refactored Solution

var gradebook = {};
for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
};

var count = 0;
for (var name in gradebook) {
  gradebook[name].testScores = scores[count];
  count++;
}

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);
}
function average(array) {
  var sum = array.reduce(function(a,b){
    return a+b
  });
  var avg = sum/(array.length);
  return avg

}
gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};


// __________________________________________
// Reflect
/*
1) What did you learn about adding functions to objects?
I learned a few new ways to add functions to objects.

2) How did you iterate over nested arrays in JavaScript?
I learned that iterating over nested arrays in JavaScript can be done by 
accessing the nested array and iterating over that, you don't need to iterate 
through each successive array to get to it.

3) Were there any new methods you were able to incorporate? If so what were they
and how did they work?
The new method we were able to incorporate was the reduce method, which worked
very similar to reduce in ruby, where we used it to sum all the items of an object.




*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)