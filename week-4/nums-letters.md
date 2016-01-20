1) What does "puts" do?
"Puts" is a ruby command that prints the output of your code to the terminal.

2) What is an integer? What is a float?
An integer is any number without a decimal, floats are numbers with decimals.

3) What is the difference between integer and float division? How would you explain the difference to someone who doesn't know anything about programming?
The difference between the two is that with integer division, if your answer is a non-integer (aka float) than it will round the number down to the nearest integer, whereas float division will give you the exact answer regardless whether the answer is a float or an integer. The main difference is that integer division is useful for when you are splitting items that cannot be divided into smaller pieces (e.g. concert tickets, cars, etc you can't split a car into halves or thirds, so integer division will be more useful) whereas float division is useful for items that can be divided into smallers pieces (eg candy bar, money, etc).


```ruby
puts "How many years"
years = gets.chomp.to_i

hours = 24 * 7 * 52 * years

puts hours
```

```ruby
puts "How many decades"
dec = gets.chomp.to_i

minutes = 60 * 24 * 7 * 52 * dec * 10

puts minutes
```
1) How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles addition, subtraction, and multiplication just as you normally would, then only difference is in division where you need to specify whether you want Ruby to do integer division or float division.

2) What is the difference between integers and floats?
Integers are whole numbers without a decimal, whereas floats are numbers that contain a decimal.

3) What is the difference between integer and float division?
Integer division will give you answers in integer form, so if your answer requires a decimal integer division will round down to the next closest integer, whereas float division will give you your answer with the decimal present.

4) What are strings? Why and when would you use them?
Strings are a group of letters, numbers, or symbols that are not treated as commands or as integers/floats. They are useful for communicating with the user of your program.

5) What are local variables? Why and when would you use them?
Local variables are variables that you create and store in your code that will only be used within that file. They are useful for when you have to repeatedly use a string or number.

6) How was this challenge? Did you get a good review of some of the basics?
This challenge was a great review of the basics. It definitely got me back into the flow of coding in Ruby.

https://github.com/jm96441n/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/jm96441n/phase-0/blob/master/week-4/simple-string.rb

https://github.com/jm96441n/phase-0/blob/master/week-4/basic-math.rb
