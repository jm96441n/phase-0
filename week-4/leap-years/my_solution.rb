# Leap Years

# I worked on this challenge [with: Cyrus Vattes].


# Your Solution Below

def leap_year?(year)
  if year%400==0
    return true
  elsif year%4==0 && year%100!=0
    return true
  elsif year%4==0 && year%100==0 && year%400!=0
    return false
  else return false
  end
end
