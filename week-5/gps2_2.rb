# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# DEFINE 'create', which takes a string of items separated by spaces 
#   Split the string at spaces into separate strings 
#   create a hash with the individual strings and their quantities
#   RETURN the hash with items and quantities
# grocery_list = ''

def create(grocery_list)
  grocery_array = grocery_list.split(' ')
  grocery_hash = {}
  grocery_array.each do |item|
    grocery_hash[item] = '1'
  end
  grocery_hash
end




# DEFINE 'add', which takes three arguments, item (a string) and quantity (a string), and list (a hash):
#   IF item is on list
#     PRINT message that item is already on list
#   ELSE
#     ADD key item to list with value quantity
# end 

def add(item, quantity, grocery_list)
  if grocery_list.include?(item)
    p "Item is already on the grocery list."
  else 
    grocery_list[item] = quantity
  end
  #print_list(grocery_list)
end

# DEFINE 'remove', which takes three arguments, item(a string) and quantity(a string), and list(a hash):
# IF item is not on the list 
#   PRINT message: item is not on the list
# ELSE 
#   REMOVE item with the quantity from the list
#   END 

def remove(item, quantity, grocery_list)
  if grocery_list.include?(item) == false 
    p "Item is not on the grocery list."
  else 
    grocery_list.delete(item)
  end
  #print_list(grocery_list)
end 


#DEFINE 'update', which takes three arguments: item (a string), quantity (a string), a list (a hash):
#   IF item is not on list
#      PRINT item is not on the list
#  ELSE
#      update the quantity of the item on the list
#END

def update(item, quantity, grocery_list)
  if grocery_list.include?(item) == false 
    p "Item is not on the grocery list."
  else 
    grocery_list.update(item => quantity)
  end 
 # print_list(grocery_list)
end

#DEFINE 'print_list', which takes one argument, a list (a hash):
# ITERATE through the hash
#   PRINT formatted each key value 
# END


def print_list(grocery_list)
  puts "     Grocery List"
  grocery_list.each do |item, quantity|
    puts "#{item.capitalize} --> #{quantity}"
  end
end

list = create("peas carrots milk")

add("Lemonade", "2", list)
add('Onions', '1', list)
add("Tomatoes", "3", list)
add('Ice Cream', '4', list)

remove("Lemonade", "2", list)

update("Ice Cream", "1", list)

print_list(list)

=begin
1) What did you learn about pseudocode from working on this challenge?
I learned how to write pseudocode more efficiently, and how to effectively use it.
2) What are the tradeoffs of using Arrays and Hashes for this challenge?
Using Array's make's it difficult to pair the quantity and the item itself, whereas using hashes requires you take extra steps initially in order to convert the string into a hash (you have to break it apart into an array and then iterate through the array to assign them a quantity and then to the hash.)
3) What does a method return?
A method returns the last value it creates. So for example in our 'remove' method, the method is returning the hash, regardless of whether you are able to remove and item or not.
4) What kind of things can you pass into methods as arguments?
You can pass strings, arrays, integers, hashes, really you can pass anything that is not anothewr method.
5) How can you pass information between methods?
You can pass information between methods by using the return value from the previous method in your next method.
6) What concepts were solidified in this challenge, and what concepts are still confusing?  
The concepts of return value for a method was definitely solidified, as well as creating new hashes. There weren't really any other concepts that were still confusing after finishing this challenge.
  
=end