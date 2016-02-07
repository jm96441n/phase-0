#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode
=begin
DEFINE class called NameData
DEFINE a the variable name as an attribute reader
DEFINE a method called initialize which takes no arguments
	SET instance variable called name which is equal to my name
END
DEFINE class called Greetings
DEFINE a method called initialize which takes no arguments
	SET a new instance variable called greet_name which initializes an instance of NameData
DEFINE a method called hello which takes no arguments
	RETURN a string with a greeting including the value used in greet_name
END

=end
class NameData
  attr_reader :name
  def initialize
    @name = 'John Maguire'
  end
end


class Greetings
  attr_reader :greet_name
  def initialize
    @greet_name = NameData.new
  end
  def hello
    return "Hello #{@greet_name.name}! How wonderful to see you today"
  end
end

greet = Greetings.new
p greet.hello


	
# howdy = NameData.new
# puts howdy.student_name

# Reflection
=begin
1) What are these methods doing? How are they modifying or returning the value of instance variables?
 - initialize: Set's the initial (instance) variables (name, age, and occupation)
 - print_info: Prints the info stored in the variables created in initialize
 - what_is_age: Allows you to call the instance variable age using the method
 - change_my_age: Allows you to change the value of the instance variable age
 - what_is_name: Allows you to call the instance variable name using the method
 - change_my_name: Allows you to change the value of the instance variable name
 - what_is_occupation: Allows you to call the instance variable occupation using the method
 - change_my_occupation: Allows you to change the value of the instance variable occupation 
2) Between this release and the last the method for "what_is_age" was removed and replaced using the attribute 
reader tag attr_reader :age. This code is simpler than the last because rather than having to call an entirely new method solely 
to call the age instance variable, the attribute reader tag is used which is much simpler.
3) Similar to the last release, the "change_my_age" method was removed and replaced with the attribute reader tag on age. 
This made the code much simpler by removing an entire method and replacing it with one line of code to do the same thing.
4) What is a reader method?
A reader method is one that allows an instance variable to be created and called as a method, but not modified or changed.
5) What is a writer method?
A writer method is one that allows for an instance variable to be created, but it's value can be re-assigned.
6) Should you always use an accessor to cover your bases? Why or why not?
It depends on the accessor you use and how often you will be using the instance variable. If you know which accessor to use, 
than it can save a lot of space, and make your code much more efficient.
7) What is confusing you about these methods?
The most confusing thing so far is spelling initialize correctly when writing my code. Also, the exact difference 
in usage between the different accessor methods, but that will come with more practice.
=end