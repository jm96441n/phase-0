
# Calculate a Grade

# I worked on this challenge [with: Cyrus Vattes ].


# Your Solution Below

def get_grade(grade)
  if 90 <= grade
    return "A"
  elsif 80 <= grade
    return "B"
  elsif 70 <= grade
    return "C"
  elsif 60 <= grade
    return "D"
  else return "F"
  end
end

