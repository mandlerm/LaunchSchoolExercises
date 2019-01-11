###### 1

# INPUT: array of numberts
# OUTPUT: Sum of each leading subsequence for that Array.

# DO - Iterate over the array
# Keep track of total sum
# sum = arr[0]
# sum += arr[0] + arr[1]
# until end of array
# RETURN that sum
# Need counter

# sum = 0
# sum += sum + arr[index]

# def sum_of_sums(arr)
#   sum = 0
#   previous = 0

#   arr.each do |n| 
#     sum += (previous + n) 
#     previous += n

#   end 
#   sum
# end 


# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p  sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

###### 2

# INPUTS: multiple user inputs in response to gets
# OUTPUT: Sentence using inputs #{ }

# puts "Enter a noun:"
# noun = gets.chomp
# puts "Enter a verb:"
# verb = gets.chomp
# puts "Enter an adjective:"
# adj = gets.chomp
# puts "Enter an adverb:"
# adverb = gets.chomp

# def madlib(noun, verb, adj, adverb)
#  puts "Do you #{verb} your #{adj} #{noun} #{adverb}? That\'s hilarous!"
# end 

# madlib(noun, verb, adj, adverb)

###### 3

# INPUT: string
# OUTPUT, array of substrings. (consecutive letters)
# DO: iterate over the array. 
# on each iteration grab the substring from [0] to [index] and shovel into array
# Retun the array

# def substrings_at_start(str)
#   subs = []

#   str.chars.each_with_index do  |ch, i|

#     subs << str.slice(0..i)

#   end 
#   subs.sort {|a, b| a.length <=> b.length} 
# end 

# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

###### 4

# INPUT: string
# OUTPUT: array with palindromes formed from the string
# DO: create array of substrings
# => iterate over the array of substrings
# => test if each substrings is a palindrome
# => if yes, add to palindrome array


def isPalindrome?(word)
  word == word.reverse
end 

# Need to amend this to have double pointers. After first iteration, move front pointer up by one += 1
def substrings_at_start(str)
  subs = []

  str.chars.each_with_index do  |ch, i|

    subs << str.slice(0..i)

  end 
  subs.sort {|a, b| a.length <=> b.length} 
end 


def palindromes(string)
  sub_array = substrings_at_start(string)
  pal_array = []
  sub_array.each do |s| 
   
    if isPalindrome?(s) && s.size > 1
      pal_array << s 
      
    end 
  end 
  

  pal_array

end 

palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

###### 5

# INPUT: 2 integers: starting, ending
# OUTPUT: Print to screen:
# => if % 3 => Fizz
# => if % 5 => Buss
# => if % 3 && % 5 FizzBuzz
# => else number

# DO: num1 to num2 do
#=> case statement

# def both(num)
#   num % 3 == 0 && num % 5 == 0
# end 

# def threes(num)
#   num % 3 == 0
# end 

# def fives(num)
#   num % 5 == 0
# end 

# def fizzbuzz(num1, num2)

#   (num1..num2).each do |num|

#     case
#     when both(num)
#       p 'FizzBuzz'
#     when threes(num)
#       p "Fizz"
#     when fives(num)
#       p "Buzz"
#     else 
#       p num
    
#     end 
# end 
# end 

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

###### 6
# INPUT: string
# OUTPUT: string with all characters doubled

# def repeater(str)

#   doubled = ''
#   str.each_char {|c| doubled << c << c}
#   doubled 

# end 

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

###### 7

# def double_consonants(str)
#   const = 'bcdfghjklmnpqrstvwxyz'

#   doubled = ''
#   str.each_char do |c| 
#     if const.include?(c.downcase)
#       doubled << c << c
#     else 
#       doubled << c 
#     end  
# end 
# doubled
# end 


# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

###### 8

# INPUT: positive integer
# OUTPUT: that integer reversed

# def reversed_number(num)
#   num.to_s.reverse.to_i

# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

###### 9

# def center_of(str)
#   length = str.length
#   half = length/2

#   mid = str[(length/2.0).floor] if length.odd?
#   mid = str[half-1..half] if length.even?
#   mid 
# end 


# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

###### 10

