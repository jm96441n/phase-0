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
