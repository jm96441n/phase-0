//Person 1: User Stories [John Maguire]
//1) As a user I want to make sure that sum is a defined function.
//2) As a user I want to check to make sure that the sum of the oddLengthArray is 27.
//3) As a user I want to check that the sum of the evenLengthArray is 43
//4) As a user I want to make sure that mean is a defined function.
//5) As a user I want to make sure that the average of the oddLengthArray is 3.857142857142857
//6) As a user I want to make sure that the average of the evenLengthArray is 5.375
//7) As a user I want to check that median is a function.
//8) As a user I want to check that the median value of oddLengthArray is 4.
//9) As a user I want to check that the median value of evenLengthArray is 5.5.
//Pseudocode
var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7];
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7];
//
//CREATE a function called 'sum' to find a sum of numbers in an array by passing our array into the function.
//    CREATE a variable to store the sum of numbers
//    ITERATE through the array and add each number to sum variable.
//    RETURN the final sum variable
//


function sum (array) {
    var sum = 0;
    for (var i = 0; i < array.length; i++) {
        sum += array[i];
    };
    console.log(sum);
    return sum;

};


//CALL function sum on 'oddLengthArray' array to get the result.
//  RESULT should be 27
sum(oddLengthArray);
//CALL function sum on 'evenLengthArray' array to get the result.
//  RESULT should be 43.
sum(evenLengthArray);

//CREATE a function called 'mean' to find the mean value from a list of numbers inside an array by passing our array into the function.
//    CREATE a variable to store the SUM of numbers
//    ITERATE through the each number inside the array and add the sum to our sum variable
//    CREATE another variable to store the median value by dividing the sum variable by the length of our array
//    RETURN the media value

function mean(array) {
  var sum = 0, i = 0;
  for(i=0; i < array.length; i++) {
    sum += array[i];
  }
  var median = (sum / array.length);
  console.log(median);
  return median;
};


//
//CALL function mean on 'oddLengthArray' array to get the result.
//  RESULT should be 3.857142857142857.
mean(oddLengthArray);
//CALL function mean on 'evenLengthArray' array to get the result.
//  RESULT should be 5.375.
mean(evenLengthArray);

//CREATE a function called 'median' to find the median value from a list of numbers inside an array by passing our array into the function.
//    SORT our array
//    CREATE a varibale to store median value
//    IF the array LENGTH is an even number
//      MEDIAN number is the middle number in array
//    ELSE
//      MEDIAN number is the AVERAGE of the middle number and the number next to it (for instance if array length is 10, then median is avg of number index 5 and 6)
//      RETURN the median value
//

/*function median(array) {
  var sortedArr = array.sort();
  var median;
  var middle = Math.floor(sortedArr.length/2);
  if(sortedArr.length % 2) {
      median = sortedArr[middle];
      console.log(median);
      return sortedArr[middle];
    }
    else {
      median = (sortedArr[middle-1] + sortedArr[middle]) / 2;
      console.log(median);
      return median;
   }*/
  function median(array) {
  var sortedArr = array.sort();
  var middle = Math.floor(sortedArr.length/2);
  var median = sortedArr[middle];
  if(sortedArr.length % 2==0) {
      median = (sortedArr[middle-1] + sortedArr[middle]) / 2;
   }
      console.log(median);
      return median;
}


}


//CALL function median on 'oddLengthArray' array to get the result.
//  RESULT should be 4.
median(oddLengthArray);
//CALL function median on 'evenLengthArray' array to get the result.
//  RESULT should be 5.5.
median(evenLengthArray);


//Edited: Median was being modified twice so I just declared it once and I changed the if/else into a single if statement and merged repeated code at the end of the function
