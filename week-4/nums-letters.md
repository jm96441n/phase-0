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

