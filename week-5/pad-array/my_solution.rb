# Pad an Array

# I worked on this challenge [with: ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode
# DEFINE method called pad! which takes three arguments, an array, an integer, and a value(string or integer)
#  IF the length of the array is less than the integer
#    SET an array with the value repeated the difference between array length and integer
#   COMBINE the two arrays and set equal to original
#  ELSE
#    return the original array
#END

# DEFINE method called pad which takes three arguments, an array, an ineger, and a value(string or integer)
# IF the length of the array is less than the integer
#   SET an array with the value repeated the difference between array length and integer
#   COMBINE the two arrays
#   RETURN the array
# ELSE
#   RETURN the original array

# 1. Initial Solution
def pad!(array, min_size, value = nil) 
  if array.length < min_size
    difference = min_size - array.length
    padding = [value]*difference
    array.concat(padding)
    return array
  else
    return array
  end
end



def pad(array, min_size, value = nil) 
    if array.length < min_size
      diff = (min_size)-(array.length)
      padding = [value]*diff
      new_arr = array + padding
    else
      new_arr = Array.new(array)
    end
  return new_arr
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) 
  if array.length < min_size
    array.concat([value]*(min_size - array.length))
  end
  return array
end

def pad(array, min_size, value = nil)
    if array.length < min_size
      diff = (min_size)-(array.length)
      new_arr = array + [value]*(diff)
    else
      new_arr = Array.new(array)
    end
  return new_arr
end

=begin
# 4. Reflection
1) Were you successful in breaking the problem down into small steps?
We were successful breaking the problem down into small steps.Thatb was definitely the easier part of the challenge.
2)Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, our psuedocode was easily translated into code.Many of the difficulties came in the actual applicatkion of the code.
3)Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution was not successful at passing the tests. Our destructive method initially did not change the original array, but gave another array of the same name but different id. Conversely our non destructive method did the opposite, where it returned the same array (when it did not have to add the padding) with the same object id. We had to change our method in the destructive method from combining the two arrays (original and padding) to a new array of the same name as the original, to concatenating the padding array into the original array. With the non destructive method we had to save the original array to a new array when padding was not neccessary to be added to it.
When you refactored, did you find any existing methods in Ruby to clean up your code?
Somewhat, we were able to use concat to combine our arrays, but we did not use that in our refactoring step.
How readable is your solution? Did you and your pair choose descriptive variable names?
The solution is very readable, and is easy to follow. We decided on the variable names, and they are relatively descriptive.
What is the difference between destructive and non-destructive methods in your own words?
With destructive methods you are returning a changed version of the original input (so the return value has the same id as the input value). With non non-destructive methods the original input is preserved, and the return value is different from the input (even if the values are the same the id will be different.)