############. SEARCHING 101. #######################

# CLI asks for 6 numbers
# need way to store those numbers (array)

# after 6th number is entered, check if array.include?(num6)

# array_of_nums = []

# puts "==> Enter the 1st number:"
# array_of_nums << gets.chomp.to_i

# puts "==> Enter the 2nd number:"
# array_of_nums << gets.chomp.to_i

# puts "==> Enter the 3rd number:"
# array_of_nums << gets.chomp.to_i

# puts "==> Enter the 4th number:"
# array_of_nums << gets.chomp.to_i

# puts "==> Enter the 5th number:"
# array_of_nums << gets.chomp.to_i

# puts "==> Enter the 6th number:"
# num6 = gets.chomp.to_i 

# if array_of_nums.include?(num6)
#   puts "The number #{num6} does appear in #{array_of_nums}"
# else 
#   puts "The number #{num6} does not appear in #{array_of_nums}" 
# end



########################  ARITHMETIC INTEGER.  #################################

# puts "Enter the first number: "
# num1 = gets.chomp.to_i

# puts "Enter the second number:"
# num2 = gets.chomp.to_i

# puts "==> #{num1} + #{num2} = #{num1 + num2}"
# puts "==> #{num1} - #{num2} = #{num1 - num2}"
# puts "==> #{num1} * #{num2} = #{num1 * num2}"
# puts "==> #{num1} / #{num2} = #{num1 / num2}"
# puts "==> #{num1} % #{num2} = #{num1 % num2}"
# puts "==> #{num1} ** #{num2} = #{num1 ** num2}"


########### COUNTING THE NUMBER OF CHARACTERS. #####################

# puts "Please write word or multiple words:"
# word = gets.chomp

# puts "There are #{word.split(' ').join.length} characters in '#{word}'."


########## SQUARING AN ARGUMENT. 

# def multiply(a, b)
#   a * b
# end

# def square(n)
#   multiply(n, n)
# end 

# puts square(5) == 25
# puts square(-8) == 64

# def power(n, power)
#   ans = power.times { multiply(n, n) }
#   ans
# end

# puts power(2, 2)
# puts power(2, 3)

############ Exclusive Or


# def xor?(arg1, arg2)
#   puts '#######################'
#   puts arg1
#   puts arg2 
#   puts "*************"
#   if arg1 && !arg2
#     return true 
#   elsif arg1 == false && arg2 == true
#     return true
#   else 
#     return false
#   end
# end 

# puts xor?(5.even?, 4.even?) == true
# puts xor?(5.odd?, 4.odd?) == true
# puts xor?(5.odd?, 4.even?) == false
# puts xor?(5.even?, 4.odd?) == false




# words = %w(scooby doo on channel two)
# words.each do |str| 
#   p words
#   p str
#   words.delete(str)
#   p words
#   p '********'
# end 

# puts words.inspect        # => ["doo", "channel"]




# def oddities(arr)
#   odds_arr = []
#   return [] if arr.length == 0
#   idx = 0
#   loop do 
#     odds_arr << arr[idx]
#     idx +=2
#     break if idx > arr.length - 1
#   end

#   odds_arr
# end 

# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []




##### PALANDROME

def palindrome?(word)

  word == word.reverse
end 

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true
# puts palindrome?([1, 2, 3, 2, 1]) == true 
# puts palindrome?([1, 2, 3, 2, 4]) == false




def real_palindrome?(word)
  puts word.downcase.delete('^a-z0-9')
  palindrome?(word.downcase.scan(/\w+/).join)
end


puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false




