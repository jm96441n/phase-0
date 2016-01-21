=begin
puts "Hello User, I am your program, please enter your name"
	puts "What is your first name"
	first = gets.chomp

	puts "Good, now what is your middle name"
	middle = gets.chomp
	
	puts "Finally, what is your last name"
	last = gets.chomp

puts 'Welcome ' + first + ' ' + middle + ' ' + last +'. You will be assimilated, resistance is futile.'
=end

=begin
puts "User, what is your favorite number?"

fav_num = gets.chomp
new_fav_num = (fav_num.to_i + 1).to_s
puts "Very nice, though a bigger and better number than your puny answer is " + new_fav_num
=end

=begin
1) How do you define a local variable?
	You define a local variable by giving a name and then with an '=' you set the variable equal to whatever value you wish to give it.
2) How do you define a method?
	You define a method by choosing a name for it and then using 'def' in front of you method name and then next the name you list your arguements either in parentheses and separated by commas, or just separated by commas.
3) What is the difference between a local variable and a method?
    The difference is that a method can perform many different functions depending on what you tell it to do, whereas a local variable can only be the value that you assigned to it. For example you can make a method that divides two numbers, or puts random words into a sentence. Whereas a local variable is only what you set it to.
4) How do you run a ruby program from the command line?
	To run a ruby program from the command line you first have to navigate to the directory the file is located in (this is optional, there is another way which I will discuss after this, but this method is the easiest) and then type 'ruby' followed by the filename with the associated '.rb' tag on the end. Another way is to simply type 'ruby' followed by the filepath that gets you to your ruby file, but I find it easier to navigate to the directory the file is loacted in.
5) How do you run an RSpec file from the command line?
	It is very similar to how you run a ruby program. You navigate to the directory the file is located in and then type 'rspec' followed by the rspec file name.
6) What was confusing about this material? What made sense?
	The only confusing part was on the formatting address challenge, where I misunderstood that the problem wanted us to return the address instead of puts the address. Other than that everying made sense, still a review of work I did leading up to the interview for DBC.


Define-Method = https://github.com/jm96441n/phase-0/tree/master/week-4/define-method

Address = https://github.com/jm96441n/phase-0/tree/master/week-4/address

Math = https://github.com/jm96441n/phase-0/tree/master/week-4/math
<<<<<<< HEAD

=end


=======
end
>>>>>>> 5407eb57b597fd38e53507ddef3dfc28a5730004
