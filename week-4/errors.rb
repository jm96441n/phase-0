# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#     puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#  errors.rb
# 2. What is the line number where the error occurs?
#  16
# 3. What is the type of error message?
#  syntax error
# 4. What additional information does the interpreter provide about this type of error?
#  The interpreter did not expect the code to end
# 5. Where is the error in the code?
#    <main>
# 6. Why did the interpreter give you this error?
# Because another 'end' is needed vertically aligned with the 'while' to close the while loop.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# line 35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# That there is an undefined local variable
# 4. Where is the error in the code?
# <main>
# 5. Why did the interpreter give you this error?
#  Ruby expects variables to be assigned values, even the value is 0.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# line 50
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# There is an unidentified method called 'cartman'.
# 4. Where is the error in the code?
# <main>
# 5. Why did the interpreter give you this error?
# The interpreter gave you this error because you did not define your method called cartman().

# --- error -------------------------------------------------------

# def cartmans_phrase
  # puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# line 69
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# The interperter was expecting a different number of arguments than is being presented.
# 4. Where is the error in the code?
# cartmans_phrase
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error, because the method cartmans_phrase is defined as taking now arguments, but on line 69 the program attempted to call cartmans_phrase but with an argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# Line 88
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter was expecting a different number of arguments than what has been presented.
# 4. Where is the error in the code?
# cartman_says
# 5. Why did the interpreter give you this error?
# The interpreter gave this error, because the method cartman_says is defined as taking a single argument, yet it is called without an argument present.



# --- error -------------------------------------------------------


# def cartmans_lie(lie, name)
  # puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 109
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter expected a different number of arguments than what was given.
# 4. Where is the error in the code?
# cartmans_lie
# 5. Why did the interpreter give you this error?
# The interpreter gave this error, because when cartmans_lie was called it expected to arguments to be present, but only one was given when it was called.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 125
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# That a string cannot be converted into a fixed number.
# 4. Where is the error in the code?
# in '*'
# 5. Why did the interpreter give you this error?
# Ruby can return multiple copies of a string by multiplying it by an integer, but it cannot multiply an integer by a string (ex: you can print 'respect my authority' 5 times, but you can't print the number 5 'respect my authority' times.)

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#line 140
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# The variable attempted to divide an integer by zero.
# 4. Where is the error in the code?
# '/'
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because you cannot divde any number by zero, however 0/20 would have worked.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 156
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter cannot load the file that is being requested.
# 4. Where is the error in the code?
# require_relative
# 5. Why did the interpreter give you this error?
# The interpeter gave this error because require_relative is trying to load a file that does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
 
=begin

1) Which error was the most difficult to read?
The error were are pretty straightforward to read, probably the first error message was the most difficult because of the line number that the error referenced wasn't the actual line that the error occured.

2) How did you figure out what the issue with the error was?
I figured out the issue of the error by seeing that it referenced the last line in the file, and then looking at the code I saw that the while loop had not been closed.

3) Were you able to determine why each error message happened based on the code?
Yes, I knew beforehand where the error would be by looking at the code.

4) When you encounter errors in future code, what process will you follow to help debug? 
Going through the code this way (reading the error messages in the terminal) seems like on of the easier ways to debug code, as well as using rspec once I get more comfortable with the code for that.
=end
