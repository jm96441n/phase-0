# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# DEFINE method called intialize which takes one argument, an integer
# 	SET an instance variable equal to guess
# DEFINE a method called guess which takes one argument, an integer (guess)
# 		SET instance variable for the last guess and for the last result equal to nil
# 		IF the guess is less than the answer
# 			SET the instance variable for the last guess equal to the guess
# 			SET instance variable for the result equal to low
# 		IF the guess is greater than the answer
# 			SET the instance variable for the last guess equal to the guess
# 			SET instance variable for the result equal to high
# 		ELSE 
# 			SET the instance variable for the last guess equal to the guess
# 			SET instance variable for the result equal to correct
# 	DEFINE a method called solved? which takes no arguments
# 		IF the instance variable for the last guess is equal to the answer, and the last result instance variable is equal to correct
# 			RETURN true
# 		ELSE
# 			return false
# END 




# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#   end

#   def guess(guess)
#   	@guess = guess
#   	@last_guess = nil
#   	@last_result = nil
#   	if guess < @answer
#   		@last_guess = guess
#   		@last_result = :low
#   	elsif guess > @answer
#   		@last_guess = guess
#   		@last_result = :high
#   	else
#   		@last_guess = guess
#   		@last_result = :correct
#   	end
#   end

#   def solved?
#   	if @last_guess == @answer && @last_result == :correct
#   		return true
#   	else
#   		return false
#   	end

#   end

#   # Make sure you define the other required methods, too
# end


# game = GuessingGame.new(10)
# p game.solved?
# p game.guess(5)
# p game.solved?
# p game.guess(10)
# p game.solved?
# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#   end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

def guess(guess)
  	@guess = guess
  	if guess < @answer
  		@guess = guess
  		@last_result :low
  	elsif guess > @answer
  		@guess = guess
  		@last_result = :high
  	else
  		@guess = guess
  		@last_result = :correct
  	end
  	return @last_result
  end

  def solved?
  	if @guess == @answer && @last_result == :correct
  		return true
  	else
  		return false
  	end

  end

end




# Reflection
=begin
1) How do instance variables and methods represent the characteristics and behaviors (actions) of a real world object?
They represent the characteristics of real world objects in the fact that they are able to be moved between each other. 
Meaning that a method or instance variable can be re-used throughout the class. Much like real world objects, 
they don't only apply to the area they are used in.
2) When should you use instance variables? What do they do for you?
You should use instance variables when you have a variable that needs to be called across different methods. 
They allow you to use a variable repeatedly throughout the class without redefining your variable over and over.
3) Explain how to use control flow? Did you have any trouble using it in this challenge? If so, what did you struggle with?
Control flow is used to check different conditions and perform functions based on the conditions set forth. 
For example, in this challenge it allows you to perform different functions and return different values based 
on whether the guess is more than, less than, or equal to the answer. I did not run into any trouble using control flow 
in this challenge.
4) Why do think this code requires you to return symbols? What are the benefits of using symbols?
I think this code requires symbols, because symbols have unique id's, which allows you to accurately check 
whether they are correct. If you set the correct solution simply to a string called 'correct', it would not always 
return true for solved. Symbols are beneficial when you have strict testing conditions, because symbols always 
have the same object id every time they are called.
=end