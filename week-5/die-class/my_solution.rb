# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode
=begin
CREATE method initialize, which takes one argument, an integer.
	CREATE class variable called sides which is equal to the integer given as the argument
	IF the integer is less than or equal to zero
		RETURN argument error that sides must be at least 1
	ELSE
		RETURN string stating you have made a die with the number of sides specified by the integer value.
CREATE method called sides which takes no arguments
	This will be equal to the class variable sides
CREATE method called roll, which takes no arguments
	CREATE variable which is equal to a new random number
	RETURN a random number between 1 and then number sides (inclusive)

	




=end


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides <= 0
    	raise ArgumentError.new('Dice must have at least one side')
    else
    	puts "You have made a die with #{sides} number of sides"
    end
  end

  def sides
    @sides
  end

  def roll
    roll_value = Random.new
    result = roll_value.rand(1..@sides)
    return result
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides <= 0
    	raise ArgumentError.new('Dice must have at least one side')
    else
    	puts "You have made a die with #{sides} number of sides"
    end
  end

  attr_reader :sides

  def roll
    return Random.new.rand(1..@sides)
  end
end






# 4. Reflection
=begin
1) What is an argument error and why would you use one?
An Argument Error is when the parameters you set are oustide the bounds of the argument you are expecting. For example, in this exercise we had to create a multi-sided die, if you had asked to create a die with a 0 number of sides (or less) this will not fit with how you can make a die, so an argument error will be returned. Another example is giving too few or too many arugments in comparison to what the method was expecting.
2) What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
The new methods I used were .rand and the attr_* method. I ran into some problems with the rand method initially by only setting the max value that it could not go above. This gave me a problem because it also included 0, which would not work with this class, so I had to change the arguments to not include 0. The attr_*(reader in this case) was very straightforward and easy to use wit success.
3) What is a Ruby class?
A Ruby class is an object with different methods associated with it. Within the class you can call instance variables throughout the different methods without having to redefine them. You can also overwrite inherited methods from a superclass in order to make the class behave as you want it to.
4) Why would you use a Ruby class?
There are many reasons to use a Ruby class. One is so that if you are constantly using a method that you have to define yourself, you can simnply make it once for the class and be able to use it freely without having to define it everytime.
5) What is the difference between a local variable and an instance variable?
A local variable is only defined within the method it is being use, you cannot call it from another method. Whereas an instance variable can be used freely throughout the class in which it is defined.
6) Where can an instance variable be used?
It can be used throughout the class that it is defined in.	

	
=end
