# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Ivy Vetor].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin
def total(array)
	sum equals 0
	while a number of the index is less than the array length
		add sum to the number at index n
		increase n by 1 each time you loop through this
	end
    return the new sum

	
=end
# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total (array)
	n = 0
	sum = 0
	while n < array.length
		sum += array[n]
		n+=1
	end
	return sum
end


 3. total refactored solution
 def total (array)
	 sum = 0
	array.each {|x| sum+=x}
end
		


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:parts of the sentence
# Output: a full sentence (one string)
# Steps to solve the problem.
# take each part of the string and concate it with the other sentence parts.


# 5. sentence_maker initial solution
def sentence_maker(array)
	n = 1
	sentence = array[0].capitalize
	while n < array.length
		sentence = sentence + ' ' + array[n].to_s
		n+=1
	end
	return sentence + '.'
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
	sentence = array[0]
	array.each {|n| sentence= sentence + ' ' + array[n].to_s}
end