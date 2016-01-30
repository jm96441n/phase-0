
# Calculate the mode Pairing Challenge

# I worked on this challenge [ with: Mike London ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode
#DEFINE mode which takes one argument (which is an array)
#  CREATE empty hash
#  ITERATE through the array
#    COUNT each
#  SORT hash based on values
#    ASSIGN all keys with the largest value to a new array
#  RETURN array containing keys  

# 1. Initial Solution
def mode(array)
  count_hash = {}
  mode_arr = []
  array.uniq.each do |item|
    count_hash[item] = array.count(item)
  end
  max_value_arr = count_hash.max_by do |k,v|
    v
  end
  max_value = max_value_arr[1]
  count_hash.keep_if {|k,v| v == max_value}
  count_hash.each_key{|k| mode_arr.push(k)}
  
  return mode_arr
end



# 3. Refactored Solution
def mode(array)
  count_hash = {}
  mode_arr = []
  array.uniq.each do |item|
    count_hash[item] = array.count(item)
  end
  max_value = count_hash.max_by do |k,v|
    v
  end
  
  count_hash.keep_if {|k,v| v == max_value[1]}
  count_hash.each_key{|k| mode_arr.push(k)}
  
  return mode_arr
end



# 4. Reflection
=begin
1) Which data structure did you and your pair decide to implement and why?
We decided to use the Hash data structure, so that we could easily store and access the frequency of each number and the number itself.
2) Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Not neccessarily, both were pretty straightforward to break down and imnplement with pseudocode.
3) What issues/successes did you run into whern translating your pseudocode to code?
The main issue we ran into was sorting through the hash based on values and then extracting all the values that were the largest. We ended up using going down a bit of a different path than we set out in our pseudocode.
4) What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .each, .max_by, .count,.keep_if, and .each_key. We did a fair amount of research while we were writing our initial solution so there were not too many changes between that and our refactored solution. Implementing the max_by method on the hash was a little difficult to implement, because we first thought that it would only return the max value, but it returned an array with the max value and it's associated key. After we figured out that what .max_by was returning was an array it was much easier to implement.  
 
=end