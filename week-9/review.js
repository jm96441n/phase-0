/*
PSEUDOCODE:
CREATE a new object, called grocery_list, which is empty.
CREATE a function called add_item
Ask the user for input on how what they would like to add, and how many of the
item they would like to add.
Take the user input and make it an item of the object grocery_list

*/

var grocery_list = {};

String.prototype.capitalize = function(){
	return this.charAt(0).toUpperCase()+this.slice(1);
}	;

function add_item(item,number){
		if (grocery_list.hasOwnProperty(item)){
			console.log(item.capitalize() +" is already on the list, try updating instead");
		}
		else{
			grocery_list[item] = number;
			console.log(number + " " + item.capitalize() + " has been added to your grocery list");
	};
	console.log(grocery_list);
};

function update_item(item,number){
	if (grocery_list.hasOwnProperty(item)){
		grocery_list[item] = number;
		console.log(number + " " + item.capitalize() + " has been updated on your grocery list");
	}
	else{
		console.log(item.capitalize() + " does not exist on your grocery list, try adding this item instead");
	};
	console.log(grocery_list);
};

function delete_item(item){
	if (grocery_list.hasOwnProperty(item)){
		delete grocery_list[item];
			console.log(item.capitalize() + " has been removed to your grocery list");
	}
	else{
		console.log(item.capitalize() +" is not currently on the list, no need to delete it.")
	};
	console.log(grocery_list);
};


//Driver Code:
add_item('broccoli',10);
add_item('carrots', 6);
add_item('broccoli',7);
update_item('broccoli',5);
update_item('beer',4);
delete_item('carrots');
delete_item('beer');

//Reflection:
/*
1) What concepts did you solidify working on this challenge?
This challenge definitely solidified how to use functions and pass information
between functions and constructors in javascript.
2) What was the most difficult part of this challenge?
The most difficult part (which I'm still trying to work on) is setting up a 
webpage that is interactive that builds this list and displays it in real time.
3) Did an array or object make more sense to use and why?
An object made much more sense to use for this challenge because you could have
each string (grocery item) connected to the amount you would need.


*/

