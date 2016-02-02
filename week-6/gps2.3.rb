# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
 error_counter = 3

 library.each do |food|
   if library[food] != library[item_to_make]
      error_counter += -1
   end
  end
  #For each element in the hash, if the input (items_to_make) is not in the hash, then increments the error counter down by 1

  if error_counter > 0
   raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
# if the error counter is greater than zero (meaning less than 3 errors have occurred) - raise an argument error.
  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size
# Setting a value for the serving size, which is the number of ingredients needed to make the item selected. Than dividing the number of ingredients needed by the amount fo ingredients you have and returning the remainder as remaining ingredients
  case remaining_ingredients
  when 0 
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}" 
    #when the remaining ingredients are equal to 0, return this message showing how many items to make 
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
    #when the remaining ingredients are more than 0, return this message showing how many items you can make and how many ingredients you have leftover.
  end
end

#Refactored Code

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
    if library.has_key?(item_to_make)
      ingredients_needed = library[item_to_make]
      remaining_ingredients = num_of_ingredients % ingredients_needed
      library.each do |food|
        if item_to_make == 'pie'
          num_pies = num_of_ingredients/7 
          num_cakes = (num_of_ingredients-(num_pies*7))/5  
          num_cookies = (num_of_ingredients-((num_pies*7)+(num_cakes*5)))/1
          return  "Calculations complete: Make #{num_pies} pies, #{num_cakes} cakes, #{num_cookies} cookies"
      
        elsif item_to_make == 'cake'  
          num_cakes = num_of_ingredients/5  
          num_cookies = (num_of_ingredients-(num_cakes*5))/1
          return "Calculations complete: Make #{num_cakes} cakes and #{num_cookies} cookies"
      
        else
          return "Calculations complete: Make #{num_of_ingredients} cookies"
        end
      end
    else
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
end

p serving_size_calc("pie", 9)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
=begin
>1) What did you learn about making code readable by working on this challenge?
I learned that adding comments to your code about what certain blocks are doing makes your code much more readable. We found a few instances where we spent some time trying to figure out exactly what the code was trying to do. Also, making sure your variable names a descriptive of what the variable does.
2) Did you learn any new methods? What did you learn about them?
I learned .values_at. It searches for the value at a particular key in the hash, and returns the value in an array.
3) What did you learn about accessing data in hashes?
I learned that when you access data in a hash, you have to be mindful of what data structure the information is returned as. For example, the 'values_at' method returns your information as an array.
4) What concepts were solidified when working through this challenge?
The concept of iterating through a hash and how to raise argument errors.


  
=end
