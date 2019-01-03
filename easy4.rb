

# def short_long_short(str1, str2)
#   combined_string = ''
#   if str1.size < str2.size
#     combined_string.concat(str1).concat(str2).concat(str1)
#   else 
#     combined_string.concat(str2).concat(str1).concat(str2)
#   end
#   combined_string  
#   # p str1
#   # p str2
#   # p '##########################'
# end

# puts short_long_short('abc', 'defgh')
# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"





# number_of_pets = {
#   'dogs' => 2,
#   'cats' => 4,
#   'fish' => 1
# }
# pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
# counter = 0

# # loop do
# #   break if counter == number_of_pets.size
# #   current_pet = pets[counter]
# #   current_pet_number = number_of_pets[current_pet]
# #   puts "I have #{current_pet_number} #{current_pet}!"
# #   counter += 1
# # end

# pets.each { |p| puts "I have #{number_of_pets[p]} #{p}"}




# input: string
# output: array of strings
# rules:
  # explisic
    # return only substrings which are palindromes
    # palindrome words should be case sensitive
  # implicit
    # returns an array


# questions:
# 1. What do you mean by substring? Consecutive letters?  



# word = "halo"

# def substring(word)
#   array_of_substrings = []

#   index  = 0

#   loop do 
#     inner_index = 0 

#     while inner_index < word.length 
#       sub_word = word[index..inner_index]
#       array_of_substrings << sub_word if sub_word.length >= 2
      
#       inner_index += 1
#     end

#     index += 1
#     break if index >= word.length
#   end 

#   array_of_substrings
# end

# def is_palindrome?(word)
#   word == word.reverse
# end

# def palindrome_substrings(word)

#   sub_array = substring(word)
  
#   pal_subs = []

#   sub_array.each { |sub| pal_subs << sub if is_palindrome?(sub) }
  
#   pal_subs
# end   

# p palindrome_substrings("abcddcbA")
# p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# p palindrome_substrings("palindrome") == []
# p palindrome_substrings("") == []




# def select_fruit(fruit_hash)
#     selected_fruit = {}

#     # fruit_hash.each do |k, v| 
#     #   selected_fruit[k] = v if v == 'Fruit'
#     # end 

#     fruit_keys = fruit_hash.keys
#     counter = 0 

#     loop do 
#       if fruit_hash[fruit_keys[counter] == "Fruit"]
#         selected_fruit[fruit_keys[counter]] = "Fruit"
#       end
#       break if counter >= fruit_keys.length
#       counter += 1
#     end

#     selected_fruit
# end

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p select_fruit(produce) 



# def century(year)
#   century = (year / 100 ) 
#   century += 1 if year % 100 != 0
  
#   century_ending = century.to_s[-1]

#   ending = case century_ending

#            when '1' then 'st'
#            when '2' then 'nd'
#            when '3'then 'rd'
#            else        'th'
#            end 


#   century.to_s + ending

# end


# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

# # st == 1, 21
# # nd == 2, 22
# # rd == 3, 23 
# # th == 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
# #
# #
# #
# #
# #
# #
# #
# #
# #
# #
# #



def multiply(array, number)

  counter = 0 
  new_array = []
  loop do
    break if counter >= array.length
    new_array << array[counter] * number
  counter += 1
  end
  new_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) #




