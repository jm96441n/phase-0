 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Your mission is to collect 15 vials of elixir and three weapons.
// Overall mission:
// Goals: Collect 15 vials of elixir and three weapons.
// Characters: You. 
// Objects: Elixir storage, weapon storage, container boxes.
// Functions: openBox, goRight, goStraight, goLeft.

// Pseudocode
//Prompt user to input their name.
// in a loop until elixir storage is at least 15 and weapons storage has at least 3 items
//Prompt user to choose to goStraight, goRight, or goLeft.
//After direction make a random number between 1 and 5, if number is 3 make a box
//Prompt user to to open the box
//	if user chooses yes, make a random number between 0 and 10,
//     if number is 2,5,8 give 3 vials of elixir
//     else if number is 1,4,7 offer a random weapon
//				ask user to keep or discard weapon
//					if user keeps, add weapon to weapon storage
//					else don't do anything
//		 else print box is empty
//  if user chooses no print 'next time try opening a box'
// print what weapons you have and how much elixir you have
// Initial Code
// var weapons = ['sword','mace','spear','lance','war hammer','trident'];
// var elixirStorage = 0
// var weaponStorage = []
// var valueBox = [1,2,3,4,5,6,7,8,9,10]


// function prompts(question, callback) {
//     var stdin = process.stdin,
//         stdout = process.stdout;

//     stdin.resume();
//     stdout.write(question);

//     stdin.once('data', function (data) {
//         callback(data.toString().trim());
//     });
// }

// prompts('Hello explorer, as you move through this cave you goal is to collect 15 vials of elixir and at least 3 weapons. Along your travels you will see random boxes, and these could contain an object that you need. When you encounter them you can choose to open them or leave them. I would advise opening all the boxes you find. To control your character type "Right", "Left", or "Straight". When you are ready to begin input your direction of choice ', function(answer) {
// 		if (answer === "Right"){
// 			explorer.goRight();
// 		}
// 		else if (answer === "Left"){
// 			explorer.goLeft();
// 		}
// 		else if (answer === "Straight"){
// 			explorer.goStraight();
// 		}
// 		else {
// 			console.log('That is not a valid input');
// 			gameloop.choice();
// 		};
// });

// var gameloop =  {
// 	choice: function() { 
// 		if ((weaponStorage.length <= 3) && (elixirStorage <= 15)){
// 			prompts('Now choose the direction you wish to head next ("R", "L", or "S"): ', function(input) {
// 				if (input === "R"){
// 					explorer.goRight();
// 				}
// 				else if (input === "L"){
// 					explorer.goLeft();
// 				}
// 				else if (input === "S"){
// 					explorer.goStraight();
// 				}
// 				else {
// 					console.log('That is not a valid input');
// 					gameloop.choice();
// 				};
// 			});
// 		}
// 		else {
// 			console.log("You have completed the game. Good work explorer!")
// 		};
//   }
// };
	


// var containerBox = {
// 	openBox: function() {
// 		var randomWeapon = weapons[Math.floor(Math.random()*weapons.length)];
// 		var randBoxNum = valueBox[Math.floor(Math.random()*weapons.length)]
// 		if (randBoxNum === 2 || randBoxNum === 5 || randBoxNum === 8){
// 			elixirStorage += 3;
// 			console.log("You found 3 vials of elixir");
// 			console.log('Weapons = '+ weaponStorage);
// 			console.log('Elixir = ' + elixirStorage);
// 		}
		
// 		else if (randBoxNum === 1 || randBoxNum === 4 || randBoxNum ===7){
// 				console.log("You found a " + randomWeapon + "it will be added to your weapons storage.");
// 				weaponStorage.push(randomWeapon);
// 				console.log('Weapons = '+ weaponStorage);
// 				console.log('Elixir = ' + elixirStorage);
// 		}
// 		else {
// 			console.log("This box was empty");
// 			console.log('Weapons = ' + weaponStorage);
// 			console.log('Elixir = ' + elixirStorage);
// 		};
// 		gameloop.choice();
// 	},
// 	// closeBox: function() {
// 	// 	console.log('You chose not to open the box. I would not reccomend this in the future.');
// 	// }
// };

// var explorer = {
// 	goRight: function (){
// 		var randChoice = (Math.floor(Math.random()*1)+1);
// 		if (randChoice === 1)
// 		{ console.log("You found a box, time to open and see what is inside!")
// 			containerBox.openBox();
// 		}
// 		else {
// 			console.log('Weapons = ' + weaponStorage);
// 			console.log('Elixir = ' + elixirStorage);
// 			console.log("Nothing here, make another movement.");
// 			gameloop.choice();
// 		};
// 	},
// 	goLeft: function () 
// 	{
// 		var randChoice = (Math.floor(Math.random()*1)+1);
// 		if (randChoice === 1)
// 		{ console.log("You found a box, time to open and see what is inside!")
// 			containerBox.openBox();
// 		}
// 		else {
// 			console.log('Weapons = ' + weaponStorage);
// 			console.log('Elixir = ' + elixirStorage);
// 			console.log("Nothing here, make another movement.");
// 			gameloop.choice();
// 		};
// 	},

// 	goStraight: function (){
// 		var randChoice = (Math.floor(Math.random()*1)+1);
// 		if (randChoice === 1)
// 		{ console.log("You found a box, time to open and see what is inside!")
// 			containerBox.openBox();
// 		}
// 		else {
// 			console.log('Weapons = ' + weaponStorage);
// 			console.log('Elixir = ' + elixirStorage);
// 			console.log("Nothing here, make another movement.");
// 			gameloop.choice();
// 		};
// 	},
// };


// 

// Refactored Code
var weapons = ['sword','mace','spear','lance','war hammer','trident'];
var elixirStorage = 0
var weaponStorage = []
var valueBox = [1,2,3,4,5,6,7,8,9,10]


function prompts(question, callback) {
    var stdin = process.stdin,
        stdout = process.stdout;

    stdin.resume();
    stdout.write(question);

    stdin.once('data', function (data) {
        callback(data.toString().trim());
    });
}

prompts('Hello explorer, as you move through this cave you goal is to collect 15 vials of elixir and at least 3 weapons. Along your travels you will see random boxes, and these could contain an object that you need. When you encounter them you can choose to open them or leave them. I would advise opening all the boxes you find. To control your character type "Right", "Left", or "Straight". When you are ready to begin input your direction of choice ', function(answer) {
		if (answer === "Right" || answer === "Left" || answer === "Left"){
			explorer.goDirection();
		};
});

var gameloop =  {
	choice: function() { 
		if ((weaponStorage.length <= 3 && elixirStorage <= 15)){
			prompts('Now choose the direction you wish to head next ("R", "L", or "S"): ', function(input) {
				if (input === "R" || input === "L" || input === "S"){
					explorer.goDirection();
				}
				else {
					console.log('That is not a valid input');
					gameloop.choice();
				};
			});
		}
		else {
			console.log("You have completed the game. Good work explorer!")
		};
  }
};
	


var containerBox = {
	openBox: function() {
		var randomWeapon = weapons[Math.floor(Math.random()*weapons.length)];
		var randBoxNum = valueBox[Math.floor(Math.random()*weapons.length)]
		if (randBoxNum === 2 || randBoxNum === 5 || randBoxNum === 8){
			elixirStorage += 3;
			console.log("You found 3 vials of elixir");
			console.log('Weapons = '+ weaponStorage);
			console.log('Elixir = ' + elixirStorage);
		}
		
		else if (randBoxNum === 1 || randBoxNum === 4 || randBoxNum ===7){
				console.log("You found a " + randomWeapon + "it will be added to your weapons storage.");
				weaponStorage.push(randomWeapon);
				console.log('Weapons = '+ weaponStorage);
				console.log('Elixir = ' + elixirStorage);
		}
		else {
			console.log("This box was empty");
			console.log('Weapons = ' + weaponStorage);
			console.log('Elixir = ' + elixirStorage);
		};
		gameloop.choice();
	},
	// closeBox: function() {
	// 	console.log('You chose not to open the box. I would not reccomend this in the future.');
	// }
};

var explorer = {
	goDirection: function (){
		var randChoice = (Math.floor(Math.random()*1)+1);
		if (randChoice === 1)
		{ console.log("You found a box, time to open and see what is inside!")
			containerBox.openBox();
		}
		else {
			console.log('Weapons = ' + weaponStorage);
			console.log('Elixir = ' + elixirStorage);
			console.log("Nothing here, make another movement.");
			gameloop.choice();
		};
	}
	
};






// Reflection
//1) What was the most difficult part of this challenge?
// The most difficult part of this challenge was figuring out a way for the terminal to accept prompts, as well as making a loop without using loop functions (like for or while).
//2) What did you learn about creating objects and functions that interact with one another?
//I learned that the order you create objects doesn't influence the way you can call them.
//3) Did you learn about any new built-in methods you could use in your refactored solution.
//None that I did not use in my initial solution.
//4) How can you access and manipulate properties of objects?
//You can access and manipulate properties outside of objects by initializing them in a new object.