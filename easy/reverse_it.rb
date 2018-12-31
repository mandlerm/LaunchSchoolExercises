# method takes a string
# puts first word in last place. last word in first place. reverses order of words
  # but keeps order of petters


# def reverse_sentence(string)
#   new_string = []
  
#   if string == ''
#     return ''
#   else 
#     str_to_array = string.split
#     while !str_to_array.empty?
#       new_string << str_to_array.pop
#     end
#   end 
#   new_string.join(' ')
# end 


# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'


########## PART 2 #############

# method takes string of one or more words
# if word has 5 >= letters
  # reverse the letters


def reverse_words(string)

  str_to_array = string.split 

  reversed_sentence = str_to_array.map do |word| 
    
    if word.length >= 5
      word.reverse!
    else
      word
    end
  end
  reversed_sentence.join(' ') 
end  


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS