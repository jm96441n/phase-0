
# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
# Person 1's solution
# Completed by [Sepand Assadi]
# Pseudocode
# Input: array, string
# Steps:
#   Create a new array
#   Using loop, iterate through the array list (word)
#     Create new variable to store word, convert it to strings and letters (using split method)
#     IF any of the words has "letter"
#       add to new array
#    Skip to next word
#   return new list
# Output: array
def my_array_finding_method(source, thing_to_find)
  new_list = []
  source.each do |word|
    splitted_word = word.to_s.split("")
    if splitted_word.include?(thing_to_find)
      new_list << word
    end
  end
  p new_list
end
# Pseudocode
# Input: hash, integer
# Steps:
#   Create a new array
#   Using loop, iterate through the hash list (key and value)
#     IF value equal to thing_to_find
#       store key of that value to new array list
#    return new list
# Output: array
def my_hash_finding_method(source, thing_to_find)
  new_list = []
  source.each do |key, value|
    if value == thing_to_find
      new_list << key
    end
  end
  p new_list
end
# Identify and describe the Ruby method(s) you implemented.
# each method for array
# split method for array to split words into letters
# each method for hash using key and value


# Person 2

#Completed by [Rokas Simkonis]

def my_array_modification_method!(array, increase)
  index = 0
  array.map! do |item|
    if item.is_a? Integer
      item + increase
    else
      item
    end
  end
  return array
end



def my_hash_modification_method!(source, increase)
  hash = source
  hash.each do |key, value|
    hash[key] = value + increase
  end
  return hash
end


# Identify and describe the Ruby method(s) you implemented.
# For the array modification I used a loop to iterate through each item and checking if an integer exists using is_a? method. If it exists then increase the value and replace with existing.
# For the hash modification I used the each method to traverse through each key value pair and add the increased value.
#


# Person 3
#Completed by [John Maguire]

def my_array_sorting_method(source)
    num_arr = []
    str_arr = []
    source.each do |x|
      if x.is_a? Integer
        num_arr.push(x)
      else
        str_arr.push(x)      
      end

    end
     num_arr.sort!
     num_arr.concat(str_arr.sort)
     return num_arr
end

def my_hash_sorting_method(source)
   sort_hash = source.sort_by {|key, value| value}
   return sort_hash
end



# Identify and describe the Ruby method(s) you implemented.
=begin
For the array I used .each, .is_a?, .push, .sort, .sort!, and .concat. .each was used to iterate through the array. .is_a? was used to seperate the integers from the strings in the array. .push was used to add the integers or strings to their new array. .sort was used to sort the string array. .sort! was used to sort the number array. .concat was used to append the string array to the number array, and create the sorted array. 
For the hash sorting I used .sort_by. By using that I was able to sort the hash by the value instead of the keys.
  
=end


# Person 4
#Completed by [Peter Kang]

def my_array_deletion_method!(source, thing_to_delete)
source.delete_if {|word|word.to_s.include? thing_to_delete}
end


def my_hash_deletion_method!(source, thing_to_delete)
source.delete_if {|key,value| key.to_s.include? thing_to_delete}
end
# Identify and describe the Ruby method(s) you implemented.
# The method I used was .delete_if. It deletes any element that the block evaluate to true.
#


# Person 5
# Completed by [John Maguire]
def my_array_splitting_method(source)
    int_array = []
    str_array = []
    arr_arr = []
    source.each do |x|
      if x.is_a? Integer
        int_array.push(x)
      else
        str_array.push(x)
      end
    end
    arr_arr.push(int_array)
    arr_arr.push(str_array)
    return arr_arr
end

def my_hash_splitting_method(source, age)
    great_arr = []
    less_arr = []
    arr_arr = []
    new_source = source.to_a
    new_source.each do |item|
      if item[1] <= age
        less_arr.push(item)
      else
        great_arr.push(item)
      end
    end
    arr_arr.push(less_arr)
    arr_arr.push(great_arr)
    return arr_arr
end


# Identify and describe the Ruby method(s) you implemented.
# I used .each, .push, and .is_a?. .push is used for pushing objects to an array, .each is used to iterate through an array or hash, and .is_a? checks if the object being given is a member of a certain class (in this case integers).
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#