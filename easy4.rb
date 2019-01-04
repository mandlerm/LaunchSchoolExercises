

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



# def multiply(array, number)

#   counter = 0 
#   new_array = []
#   loop do
#     break if counter >= array.length
#     new_array << array[counter] * number
#   counter += 1
#   end
#   new_array
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 3) #






def leap_year1?(year)

 if year % 400 == 0
    true 
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else  
    false
  end 
end 

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true



# def leap_year?(year)
#   if year < 1752
#     year % 4 == 0
#   else 
#     leap_year1?(year)
#   end

# end 

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true



# def multisum(num)
#   multiples = []

#   (1..num).each do |n|
#     multiples << n if (n % 3 == 0) || (n % 5 == 0)
#   end 

#   multiples.inject(:+)
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168



# def running_total(arr)
#   sum = 0
#   arr.map { |n| sum += n }
# end 

# def running_total(arr)
#   sum = 0 
#   arr.each_with_object([]) { |n, array| array << sum += n }

# end   

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []


# def string_to_integer(int_string)
#   number = 0
#   place_value = 1

#   int_string.reverse.chars do |c|
#      case c 
#      when '0' then number += (0 * place_value)
#      when '1' then number += (1 * place_value)
#      when '2' then number += (2 * place_value)
#      when '3' then number += (3 * place_value)
#      when '4' then number += (4 * place_value)
#      when '5' then number += (5 * place_value)
#      when '6' then number += (6 * place_value)
#      when '7' then number += (7 * place_value)
#      when '8' then number += (8 * place_value)
#      when '9'   then number += (9 * place_value)
#       end   
#       place_value *= 10
      
#   end 
#   number
# end 

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570


# def string_to_signed_integer(str)
#   str_array = str.chars
#   sign = str_array.shift if str[0] == "+" || str[0] == "-"
#   number = string_to_integer(str_array.join)
#   if sign == '-'
#     number * -1
#   else
#     number 
#   end 
# end 

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100



def integer_to_string(num)
  numbers = {'1' => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}
  num_string = []
  if num == 0 
    num_string << '0'
  else
    loop do 
      num_string.unshift(num % 10)
      num = num / 10

      if num < 10
        num_string.unshift(num)
   
        break
      end
    end
  end
  num_string.join
end



# def signed_integer_to_string(integer)
#   sign = ''
#   num_string = ''
#   if integer == 0 
#     num_string = '0'

#   else 
   
#     if integer < 0
#        integer *= -1
#        sign = '-'
#     elsif integer > 0
#       sign = '+' 
#     end 


#     num_string = integer_to_string(integer)

#     num_string.prepend(sign)
#   end   
#     num_string
# end 

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'





# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

