// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: [Jillian Campbell] .

// Pseudocode
// Convert integer to string
//Reverse the string 
//Convert string to an array
//Add commas at every 3rd character
//Convert array back to an string 
//Reverse and join string


// Initial Solution
function nums_commas(num) {

  var num = num.toString();
  var num_arr = num.split('').reverse();
  for (var index = 3; index < num_arr.length; index+=4){
    num_arr.splice(index,0,',')
  };
  return num_arr.reverse().join('');
  
};


// Refactored Solution
function nums_commas(num) {
  var num_arr = num.toString().split('').reverse();
  for (var index = 3; index < num_arr.length; index+=4){
    num_arr.splice(index,0,',')
  };
  return num_arr.reverse().join('');
  
};



// Your Own Tests (OPTIONAL)


console.log(nums_commas(2345123345156786));

// Reflection
// 1) What was it like to approach the problem from the perspective of JavaScript?
// Did you approach the problem differently?
// It was interesting to approach the problem from the perspective of JavaScript. 
// We didn't approach the prob lem any differently. The syntax was very similar 
// between JavaScript and Ruby.
// 2) What did you learn about iterating over arrays in JavaScript?
// I learned that many of the same ways of iterating over array's in Ruby are 
// present in Javascript. 
// 3) What was different about solving this problem in JavaScript?
// We used the splice method, which we did not use when we solved this problem in
//  Ruby. The splice method made it easier to insert the commas.
// 4) What built-in methods did you find to incorporate in your refactored solution?
// We found splice, which allowed us to insert commas at the locations we wanted.
