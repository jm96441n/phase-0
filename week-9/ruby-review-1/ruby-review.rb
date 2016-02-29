# OO Basics: Student


# I worked on this challenge [by myself, with: Pietro Martini].
# This challenge took me [1] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name, :average
  
  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  
  def average
    sum = @scores.reduce(:+)
    count = @scores.length
    @average = sum/count
    return @average
  end 
  
  def letter_grade
    case
    when @average >= 90 then return "A"
    when @average >= 80 then return "B"
    when @average >= 70 then return "C"
    when @average >= 60 then return "D"
    else return "F"
    end 
  end 
 
end

def linear_search(array, name)
  array.each_index{|index|
    if array[index].first_name == name
      return index
    else
      return -1
    end
    }
end



student1 = Student.new("Alex", [100, 100, 100, 0, 100])
student2 = Student.new("Laura", [100, 100, 100, 0, 100])
student3 = Student.new("George", [100, 100, 100, 0, 100])
student4 = Student.new("Mark", [100, 100, 100, 0, 100])
student5 = Student.new("Joanna", [100, 100, 100, 0, 100])
students = [student1, student2, student3, student4, student5]

# Refactored Solution

class Student
  attr_accessor :scores, :first_name, :average
  
  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  
 def average
    @average = @scores.reduce(:+)/ @scores.length
 end 
  
  def letter_grade
    case
    when @average >= 90 then return "A"
    when @average >= 80 then return "B"
    when @average >= 70 then return "C"
    when @average >= 60 then return "D"
    else return "F"
    end 
  end 
 
end

def linear_search(array, name)
  array.each_index{|index|
    if array[index].first_name == name
      return index
    else
      return -1
    end
    }
end



student1 = Student.new("Alex", [100, 100, 100, 0, 100])
student2 = Student.new("Laura", [100, 100, 100, 0, 100])
student3 = Student.new("George", [100, 100, 100, 0, 100])
student4 = Student.new("Mark", [100, 100, 100, 0, 100])
student5 = Student.new("Joanna", [100, 100, 100, 0, 100])
students = [student1, student2, student3, student4, student5]




# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection
=begin
1) What concepts did you review in this challenge?
In this challenge I reviewed using classes and different kinds of objects in ruby.
2) What is still confusing to you about Ruby?
Some of the implementation of classes and objects, but I feel with more practice 
these will become more clear.
3) What are you going to study to get more prepared for phase 1?
I am going to do more of the Ruby review problems.
  
=end