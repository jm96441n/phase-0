# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

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
  	if labels == []
  		raise ArgumentError.new('Dice must have at labels for sides')
  	end
	end

  def sides
  	@leng = @sides.length
    #@index = @leng - 1
  	return @leng
  end

  def roll
    rand_side = @sides[rand(@leng)]
  end
end




arr2 = ('A'..'Z').to_a.shuffle.first(15)
arr = ['A']
die = Die.new(arr2)
p die.sides
p die.roll


p Array.new(1000){die.roll}.uniq.sort
p arr2.sort
#p Array.new(100){die.roll}

# Refactored Solution


#rand_side = @sides[rand(@length)]
#  	return rand_side





# Reflection