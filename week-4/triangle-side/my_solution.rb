# I worked on this challenge [with: Cyrus Vattes ].


# Your Solution Below

def valid_triangle?(a, b, c)
	if (a+b>c) && (a+c>b) && (b+c>a)
		return true
	else 
		return false	
  end
end