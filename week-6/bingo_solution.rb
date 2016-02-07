# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
CREATE an array containing each letter of bingo stored as a string
CREATE a variable which randomly chooses one of these letters
CREATE a variable which randomly chooses a number less than 100 inclusive
PRINT the letter chosen and the number chosen

# Check the called column for the number called.
CREATE a variable, called letter_index, which stores the index of the letter called in the previous method
ITERATE through the bingo board only at the letter_index of each nested array


# If the number is in the column, replace with an 'x'
IF the number at letter_index is the equal to the number chosen at random, than change the value at 
that index to 'X'

# Display a column to the console
ITERATE through the bingo board and print only the values at letter_index

# Display the board to the console (prettily)
ADD the bingo array to the bingo board at the zero index
ITERATE through the bingo board and print each item

=end
# Initial Solution

# class BingoBoard
#   attr_reader :bingo, :letter, :number, :letter_index
#   attr_accessor :bingo_board
#   def initialize(board)
#     @bingo_board = board
#   end

#   def caller
#     @bingo = ['B','I','N','G','O']
#     @letter = @bingo.sample
#     @number = rand(100)
#     p @letter + @number.to_s
#   end

#   def checker
#     letter_index = @bingo.index(@letter)
#     @bingo_board.each { |item|
#       if item[letter_index] == @number
#         item[letter_index] = 'X'
#       end
#     }
#     @bingo_board.insert(0,@bingo)
#     @bingo_board.each {|item|
#       p item
#     }
#   end

# end

# Refactored Solution
class BingoBoard
  attr_reader :bingo, :letter, :number, :letter_index
  attr_accessor :bingo_board
  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo = ['B','I','N','G','O']
    @letter = @bingo.sample
    @number = rand(100)
    p @letter + @number.to_s
  end

  def check
    letter_index = @bingo.index(@letter)
    @bingo_board.each { |item|
      if item[letter_index] == @number
        item[letter_index] = 'X'
      end
      p item
    }
    @bingo_board.insert(0,@bingo)
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
#Reflection
=begin
 1) How difficult was it pseudocoding this challenge? What do you think of your pseudocoding style?
 Pseudocoding this challenge wasn't too difficult. I'm getting more used to pseudocoding for these more intricate challenges.
 2) What are the benefits of using a class for this challenge?
 The benefits of using a class for this challenge are being able to simply store all of the information you need and 
 use it as need be, without having to constantly call all the variables and methods used again each time you want to call a 
 number for the bingo board.
 3) How can you access coordinates in a nested array?
 You can access coordinates in a nested array by iterating through the parent array and then accessing values in 
 the nested arrays using their indexes. Another way is to use the name for the parent array, an access the index the nested 
 array is located at and then the index of the item you want in the nested array. For example parent_array[0][2] will access a 
 nested array at the zero index of the parent array and the item at the second index of the nested array.
 4) Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose 
 does it serve, and how is it called? 
 A new method I learned while reviewing the Ruby docs is the .insert method. It allows you to insert an item into an 
 array at a given index. It is called like this: a.insert(2, 'Hello') where a is the name of the array, 2 is the index, and 
 'Hello' is what you want to insert into the array. This can be used to insert arrays, strings, integers, really any data type 
 into an array.
 5) How did you determine what should be an instance variable versus a local variable?
 I determined whether to use an instance variable versus a local variable depending on whether 
 I needed to use that variable in other methods, or just the method I was defining it in. If I needed to use the variable in 
 other methods I would use an instance variable, if the variable was only being used in the method it was defined in I would 
 use a local variable.
 6) What do you feel is most improved in your refactored solution?
 The most improved part of my refactored solution was that I was able to remove the second .each loop and use the print item 
 in the first .each, which saved a lot of lines of code and time.
  
=end
