# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers == []
  	return 0
  else
  	count = 0
  	list_of_integers.each do |x|
  		if (lower_bound <= x) & (x <= upper_bound)
  			count = count + 1
  		end
  	end
  	return count
  end
end

puts count_between([2,4,6,8,10,12],3,8)