#Pseudocode
#DEFINE group_maker method which takes one agrument, an array of names
#   WHILE array length is greater than 5:
#   TAKE the first 5 elements
#      MAP to new array
#      DELETE from original array
#      
#      RINSE AND REPEAT
# 
#Initial Solution


def group_maker(array)
  group_hash = {}
    arrays = array.each_slice(5).to_a
    arrays.each do |item|
      if item.length == 2
        arrays[0].push(item[0])
        arrays[1].push(item[1])
        num = arrays.index(item)+1
        group_hash["group #{num}"] = item
        group_hash.delete_if {|k,v| v.length <= 2}
        
      elsif item.length == 1
        arrays[0].push(item[0])
        num = arrays.index(item)+1
        group_hash["group #{num}"] = item
        group_hash.delete_if {|k,v| v.length <= 2}
      else
        num = arrays.index(item)+1
        group_hash["group #{num}"] = item
      end
    end
  return group_hash
end

#Refactored Solution
def group_maker(array)
  group_hash = {}
    arrays = array.each_slice(5).to_a
    arrays.each do |item|
      if item.length == 2
        arrays[0].push(item[0])
        arrays[1].push(item[1])
        num = arrays.index(item)+1
        group_hash["group #{num}"] = item
        group_hash.delete_if {|k,v| v.length <= 2}
        
      elsif item.length == 1
        arrays[0].push(item[0])
        num = arrays.index(item)+1
        group_hash["group #{num}"] = item
        group_hash.delete_if {|k,v| v.length <= 2}
      else
        num = arrays.index(item)+1
        group_hash["group #{num}"] = item
      end
    end
  return group_hash
end

acct = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]


p group_maker(acct)

=begin
REFLECTION:
1) What was the most interesting and most difficult part of this challenge?
The most difficult part of this challenge was figuring out how to automatically split the intial array of strings into smaller arrays of the group sizes we wanted. The mos interesting part was adjusting the code to work for groups of different sizes.	
2) Do you feel you are improving in your ability to write pseudocode and break the problem down?
I feel I am definitely improving in my ability to write pseudocode. It has been a big help in breaking the problem down into easier to manage steps.
3) Was your approach for automating this task a good solution? What could have made it better?
I feel our solution worked well for what we were looking for, though I feel formatting the response would have made this a bit easier to read, especially for larger groups. Maybe having each group in it's own hash, or have each item of the hash output to a different line.
4) What data structure did you decide to store the accountability groups in and why? 
I decided to store the groups in a hash. At first I had the groups stored in an array of arrays, where each small array was one of the groups, but I found it easier to read and access by storing to a hash. In the hash I was able to attach a group name to each hash, which made it easier to read.
5) What did you learn in the process of refactoring your inital solution? Did you learn any new methods?
I didn't end up doing much refactoring for this exercise. I did a lot of research while writing this code for the best methods to use. I learned about .each_slice which sliced an array at a set interval.
	
end
