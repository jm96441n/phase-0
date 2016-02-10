var number = 100;
number += 10;
console.log(number);

prompt("What is your favorite food?");
console.log("Hey! That's my favorite too!");

for (var number = 1; number <=100; number++){
  var print = ""
  if (number % 3 == 0)
    print += "Fizz";
  if (number % 5 == 0)
    print += 'Buzz';
  console.log (print || number);
}

for (var pound = '#'; pound.length <=8; pound += '#')
	console.log(pound);

	