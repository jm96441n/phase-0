# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [3] hours on this challenge.

# Pseudocode
=begin
DEFINE a method called initialize which takes one argument, an array
	SET instance variable labels equal to argument that is passed
	IF the array passed is empty then raise an Argument Error
	ELSE print a string that says you have created a dice with the strings in labels as side values
DEFINE method called sides which takes no arguments
	RETURN the number of elements in the array 'labels'
DEFINE a method called roll, which takes no arguments
	SET a random value that is from the range of the number of indexes of the array
  RETURN the element of the array at the index of the random number
END

=end
# Initial Solution

class Die
  def initialize(labels)
  	@sides = labels
    if @sides == []
      raise ArgumentError.new('Dice must have at labels for sides')
    end
	end

  def sides
  	  @sides.length
  	  
  
  end

  def roll
    rand_index = rand(@sides.length)
    return @sides[rand_index]
  end
end





# Refactored Solution
class Die
  def initialize(labels)
    @sides = labels
    if @sides == []
      raise ArgumentError.new('Dice must have at labels for sides')
    end
  end

  def sides
      @sides.length
      
  
  end

  def roll
    @sides.sample
  end
end



# Reflection
=begin
1) What were the main differences between this die class and the last one 
you created in terms of implementation? Did you need to change my logic to get this to work?
There wasn't too much of a difference, the main difference was in the how you 
derived the random roll. In this you had to take a random number in the range of the length of the array and use that as the index to call the random side. The logic was very similar though.
2) What does this exercise teach you about making code that is easily changeable of modifiable?
This exercise taught me to leave my code as open to change as possible, so that it 
can be easily applicable in other situations with minimal changes.
3) What new methods did you learn when working on this challenge, if any?
I used .sample, which was a new method. It returns a random element of an array.
4) What concepts about classes were you able to solidify in this challenge?
The concept of instance variables was definitely solidified in this challenge, and how 
to use them appropriately. 

  
=end