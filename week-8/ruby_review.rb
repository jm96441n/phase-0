# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # This takes the coded message and turns all the characters lower case, and then splits them into an array of each character.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? A better data structure for this would be two arrays, where one array is the alphabet in order, and the other is the alphabet shifted over four letters.
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # Here, each is going through each letter in the array of letters from the coded message?
#     found_match = false  # This is assigned false from the outset, because if a character is present that does not have a match, it automatically outputs false. This is done so that we can test for the true cases later on
#     cipher.each_key do |y| # What is #each_key doing here? Each_key is going through each key value in the cipher hash
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? This is comparing the letters in the coded message to the key value in the decoder. 'y' is the letters in the cipher that decode the message.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? The loop breaks here so that if a value is not found in the cipher, it can move on to the next step.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This is testing letters in the coded message against any characters that are not letters, and replaces them with a space.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? It makes an array of the numbers from 0 to 9.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? This is looking for found_match is true.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? This method is returning the decoded sentence as a string.
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  cipher = ['e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v', 'w','x','y','z','a','b','c','d']
  alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v', 'w','x','y','z']
  characters = ['@','#','$','%','^','&','*']
  input.each do |x| 
    found_match = false 
    cipher.each_index do |y| 
      if x == cipher[y]  
        decoded_sentence << alphabet[y]
        found_match = true
        break  
      elsif characters.include?(x) 
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
end

# class Dr_evils_cipher
#     def initialize(coded_message)
#       @decoded_sentence = []
#       @input = coded_message.downcase.split('')
#       @cipher = []
#       @alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v', 'w','x','y','z']
#       @characters = ['@','#','$','%','^','&','*']
#     end
#     def letter_converter(number)
#       @alphabet.each_index do |x|
#           @cipher.push(@alphabet[x+number])
#       end
#       @input.each do |n|
#         @cipher.each_index do |a|
#           if n == cipher[a]
#             @decoded_sentence << alphabet[a]

#     end
#     def punctuation_converter()
#       @input.each_index do |y|
#         if @characters.include?(input[y])
#           input[y] = ' '
#         end
#       end
#     end
#     def  
#   end

# message = Dr_evils_cipher.new('abcdef ghi jkl')
# p message.letter_converter(4)

# Driver Test Code:
p "m^aerx%e&gsoi!"
p dr_evils_cipher("m^aerx%e&gsoi!") #== "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p "syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l"
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
=begin
1) What concepts did you review or learn in this challenge?
I reviewed the concepts of using the .each loop, as well as refactoring 
=end
# Keep your reflection limited to 10-15 minutes!