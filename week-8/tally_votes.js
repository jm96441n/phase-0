// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" },
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined,

}


// Pseudocode
// Loop through votes for each person who voted
// Loop inside that loop for each office position
// FOR each position
// IF the name is not there, add the name to the object with a vote count of 1
// ELSE add 1 to the object
//
// SET a variable equal to the first element of each position on the voteCount object
// loop through the voteCount 
// compare the value of the variable to the value of each element
// if the value of the element is greater than the variable, reassign the variable to be the larger element
// return the largest element

// __________________________________________
// // Initial Solution
// for (var names in votes) {
//     var presCandidate = votes[names].president
//         if (presCandidate in voteCount.president){
//           voteCount.president[presCandidate]+=1;
//         }
//         else{
//           voteCount.president[presCandidate] = 1;
//         };

//       var vicePresCandidate = votes[names].vicePresident
//         if (vicePresCandidate in voteCount.vicePresident){
//           voteCount.vicePresident[vicePresCandidate]+=1;
//         }
//         else{
//           voteCount.vicePresident[vicePresCandidate] = 1;
//         };
//       var secCandidate = votes[names].secretary
//         if (secCandidate in voteCount.secretary){
//           voteCount.secretary[secCandidate]+=1;
//         }
//         else{
//           voteCount.secretary[secCandidate] = 1;
//         };
//       var tresCandidate = votes[names].treasurer
//         if (tresCandidate in voteCount.treasurer){
//           voteCount.treasurer[tresCandidate]+=1;
//         }
//         else{
//           voteCount.treasurer[tresCandidate] = 1;
//         };
// };

// var presCount = voteCount.president.Bob;
// for (var voteCounter in voteCount.president){
//   if (presCount < voteCount.president[voteCounter]){
//     presCount = voteCount.president[voteCounter];
//   }
//   else{
//     presCount;
//   };
// };

// for (var officer in voteCount.president){
//   if (presCount === voteCount.president[officer]){
//     officers.president = officer;
//   };
// };

// var vpCount = voteCount.vicePresident.Bob;
// for (var voteCounter in voteCount.vicePresident){
//   if (vpCount < voteCount.vicePresident[voteCounter]){
//     vpCount = voteCount.vicePresident[voteCounter];
//   }
//   else{
//     vpCount;
//   };
// };

// for (var officer in voteCount.vicePresident){
//   if (vpCount === voteCount.vicePresident[officer]){
//     officers.vicePresident = officer;
//   };
// };



// var secCount = voteCount.secretary.Bob;
// for (var voteCounter in voteCount.secretary){
//   if (secCount < voteCount.secretary[voteCounter]){
//     secCount = voteCount.secretary[voteCounter];
//   }
//   else{
//     secCount;
//   };
// };

// for (var officer in voteCount.secretary){
//   if (secCount === voteCount.secretary[officer]){
//     officers.secretary = officer;
//   };
// };

// //treasurer vote counts
// var tresCount = voteCount.treasurer.Bob;
// for (var voteCounter in voteCount.treasurer){
//   if (tresCount < voteCount.treasurer[voteCounter]){
//     tresCount = voteCount.treasurer[voteCounter];
//   }
//   else{
//     tresCount;
//   };
// };

// for (var officer in voteCount.treasurer){
//   if (tresCount === voteCount.treasurer[officer]){
//     officers.treasurer = officer;
//   };
// };



// // console.log(presCount);
// // console.log(vpCount);
// // console.log(secCount);
// // console.log(tresCount);
// console.log(voteCount);
// console.log(officers);
 






// __________________________________________
// Refactored Solution

// for (var names in votes) {
//   for(var candidate in votes[names]){
//     for (var position in voteCount){
//       for (var tally in voteCount[position]){
//         if (votes[names][candidate] in voteCount[position][tally]){
//           voteCount[position][tally] += 1;
//         }
//         else {
//           voteCount[position][tally] = 1;
//         };
//       };
//     };  
//   };
// };
  

for (var names in votes) {
  for (var position in votes[names]) {
    var candidate = votes[names][position];
        if (candidate in voteCount[position]){
          voteCount[position][candidate] += 1;
        }
        else {
          voteCount[position][candidate] = 1;
          
        }
  }
}; 



for (var position in voteCount){
  var count = 0
  for (var voteCounter in voteCount[position]){
    
    if (count < voteCount[position][voteCounter]){
      count = voteCount[position][voteCounter];
      officers[position] = voteCounter
    }
};
};



// __________________________________________
// Reflection






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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)