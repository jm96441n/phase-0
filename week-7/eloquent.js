var number = 100;
number += 10;
console.log(number);

prompt("What is your favorite food?");
console.log("Hey! That's my favorite too!");

for (var number = 1; number < 100; number += 1)
{
  var print = ""
  if (number % 3 ==0 && number % 5 == 0)
    print = "FizzBuzz";
  else if (number % 3 == 0)
    print = "Fizz";
  else if (number % 5 == 0)
    print = "Buzz";
  else
    print = number;
  console.log(print);
}

for (var pound = '#'; pound.length <=8; pound += '#')
	console.log(pound);

function min(number1, number2) {
  if (number1 < number2)
    return number1;
  else
    return number2;
}