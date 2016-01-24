# Factorial

# I worked on this challenge [with: Ivy Vetor].


# Your Solution Below

def factorial(number)
	i=1
	x = number
  if number == 0
  	return 1
  end
  while i<x do
		number = number*i
		i +=1
	end
	return number
end
