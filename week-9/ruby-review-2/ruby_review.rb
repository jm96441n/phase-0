# I worked on this challenge [with: Pietro Martini ].
# This challenge took me [1] hours.

# Pseudocode


# Initial Solution
def is_fibonacci?(num)
  fib_arr =[0,1]
  fib = fib_arr[-1]
  while fib<=num 
    fib_arr.push(fib)
    fib += fib_arr[-2]
  end
  if fib_arr.include?(num)
    return true
  else
    return false
  end
end

# Refactored Solution

def is_fibonacci?(num)
  fib_arr =[0,1]
  fib = fib_arr[-1]
  while fib<=num 
    fib_arr.push(fib)
    fib += fib_arr[-2]
  end
  fib_arr.include?(num) ? true : false 
end

# Reflection
=begin
1) What concepts did you review in this challenge?
I reviewed recursive functions in this challenge.
2) What is still confusing to you about Ruby?
Nothing in this challenge was confusing.
3) What are you going to study to get more prepared for phase 1?
I am going to do more of the Ruby review problems.
=end