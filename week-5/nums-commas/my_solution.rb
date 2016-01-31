# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
DEFINE method called nums_comma which takes one argument, an integer
	CONVERT integer to string
	IF the length of the number mod 3 is 1
		SPLIT the string into two strings where the first string is the first digit and the second string is the rest of the digits
		INSERT a comma at index 0
		INSERT a comma every 4 index spaces
		COMBINE the two strings
		RETURN the string with commas
	ELSIF the length of the number mod 3 is 2
		SPLIT the string into two strings where the first string is the first two digits and the second string is the rest of the digits
		INSERT a comma at index 0
		INSERT a comma every 4 index spaces
		COMBINE the two strings
		RETURN the string with commas
	ELSIF the length of the number mod 3 is 2
		SPLIT the string into two strings where the first string is the first two digits and the second string is the rest of the digits
		INSERT a comma at index 0
		INSERT a comma every 4 index spaces
		COMBINE the two strings
		RETURN the string with commas
	ELSIF the length of the number mod 3 is 0 && the length is greater than 4
		SPLIT the string into two strings where the first string is the first three digits and the second string is the rest of the digits
		INSERT a comma at index 0
		INSERT a comma every 4 index spaces
		COMBINE the two strings
		RETURN the string with commas
	ELSE
		RETURN the integer given in string form
=end
# 1. Initial Solution

def separate_comma(number)
	num_str = number.to_s
	if num_str.length%3 == 1
		first = num_str.slice!(0)
		num_comma = (num_str.length)/3
		count = 0
		num_comma.times do |x|
			x = ','
			',' + num_str[0+count] + num_str[1+count] + num_str[2+count]
			count += 1
		end
		num_w_comma = first + num_str
	elsif num_str.length%3 == 2
		first = num_str.slice!(0..1)
		num_comma = (num_str.length)/3
		count = 0
		num_comma.times do |x|
			x = ','
			',' + num_str[0+count] + num_str[1+count] + num_str[2+count]
			count += 1
			end
		num_w_comma = first + num_str
	elsif num_str.length%3 == 0 && num_str.length > 3
		first = num_str.slice!(0..2)
		num_comma = (num_str.length)/3
		count = 0
		num_comma.times do |x|
			x = ','
			',' + num_str[0+count] + num_str[1+count] + num_str[2+count]
			count += 1	
		end
		num_w_comma = first + num_str
	else
		num_w_comma = num_str
	end
	return num_w_comma
end





# 2. Refactored Solution
def separate_comma(number)
	num_str = number.to_s
	if num_str.length%3 == 1
		first = num_str.slice!(0)
		count = 0
		((num_str.length)/3).times do |x|
			x = ','
			num_str.insert(count, x)
			count += 4
		end
		num_w_comma = first + num_str
	elsif num_str.length%3 == 2
		first = num_str.slice!(0..1)
		count = 0
		((num_str.length)/3).times do |x|
			x = ','
			num_str.insert(count, x)
			count += 4
			end
		num_w_comma = first + num_str
	elsif num_str.length%3 == 0 && num_str.length > 3
		first = num_str.slice!(0..2)
		count = 0
		((num_str.length)/3).times do |x|
			x = ','
			num_str.insert(count, x)
			count += 4	
		end
		num_w_comma = first + num_str
	else
		num_w_comma = num_str
	end
	return num_w_comma
end

p separate_comma(68340532)
p separate_comma(10000000)


# 3. Reflection
=begin
1) What was your process for breaking the problem down? What different approaches did you consider?
My process for breaking the problem down was to seperate the first numbers (either the first digit, first two digits, or first three digits depending on if the number is in thousand, ten-thousands, or hundred-thousands or any multiple of those.) From there I added a comma at the begining and then another comma every 4 spaces into the number. Then I recombined the number with the commas with the digits I took off in the begining. I also debated slicing the first digits off into an array and then splitting the remaining digits into an array of arrays with three digits per array. From there I was going to combine the digits in the sub-arrays and then combine those sub-arrays with comma's between them.
2) Was you pseudocode effective in helping you build a succesful intitial solution?
It was very helpful in building my initial solution. There were a few times I went off the path of my pseudocode and tried to use arrays to no avail. By going back to my pseudocode I was able to get back to the way I wanted to solve the problem.
3) What new Ruby method(s) did you use in refactoring your solution?
The new Ruby method I used in my refactoring was .insert. It allowed me to insert a comma every 4 index spaces, as opposed to my initial solution which foricbly iterated through every index and added commas where they needed to be.

=end