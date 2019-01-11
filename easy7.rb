##### 1

#INPUT: 2 arrays
# OUTPUT - 1 array combined

# def interleave(array1, array2)
#   p array1.zip(array2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

##### 2

#INPUT: string
# OUTPUT: hash with keys: lowercase, uppercase, neither

# START
# establish a new has with Hash.new(0)
# string.char - if |c| is lowercase, hsh[:lowercase] += 1
# repeat that for each key 
# return that hash

# def letter_case_count(string)
#   hsh = Hash.new(0)

#   string.chars do |char|
#      if char =~ /[^A-Za-z]/
#       hsh[:neither] = hsh[:neither] += 1
#     elsif char == char.downcase
#       hsh[:lowercase] = hsh[:lowercase] += 1
#     elsif char == char.upcase
#        hsh[:uppercase] = hsh[:uppercase] += 1
#     end
   
#   end
  

#   # counts = {}
#   # characters = string.chars
#   # counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   # counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   # counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   # counts
# end 

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


##### 3
# INPUT: string
# OUTPUT: new string with first letter of each word capitalized 

# START
# SET new string to value of .map 
# .map over string input. Capitalize each value

# def word_cap(string)

#   string.split.map {|word| word.capitalize}.join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


##### 4

# def swapcase(string)
#   swapped = ''
#   string.chars {|c| c == c.upcase ? swapped << c.downcase : swapped << c.upcase}
#   swapped
# end 


# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

##### 5
# INPUT: string
# OUTPUT: new string with alternating caps, starting with Caps
# => do not alter numbers, but this does not change alternation

# START
# SET new string
# Iterate over every character
# IF index.odd? make update UNLESS char =~ /[^a-zA-Z]/

# def staggered_case(string)

#   staggered = ''
#   string_array = string.chars 

#   string_array.each_with_index do |ch, i|
#     if ch =~ /[a-zA-Z]/
#       i.odd? ? staggered += ch.downcase : staggered += ch.upcase
#     else 
#       staggered << ch
#     end
#   end
#   p staggered
# end



# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
##### 6


# def staggered_case(string)

#   staggered = ''
#   string_array = string.chars 
#   up = TRUE

#   string_array.each_with_index do |ch, i|
#     if ch =~ /[a-zA-Z]/
#       if up  
#         staggered += ch.upcase 
        
#       else 
#         staggered += ch.downcase 
#       end
#       up = !up
#     else 
#       staggered << ch
#     end
#   end
#   staggered
# end


# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


##### 7

# INPUT: array of numbers
# OUTPUT: float to 3 desimal places

# DO - add all integers in the array
# divide the sum by array.size (sprintf ??)

# def show_multiplicative_average(arr)

#   ave =  arr.map{|n| n.to_f}.reduce(&:*)/ arr.size
#   ave_to_places = sprintf "%.3f", ave
#   p "The result is #{ave_to_places}"
# end 


# show_multiplicative_average([3, 5])
# # The result is 7.500

# show_multiplicative_average([6])
# # The result is 6.000

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# # The result is 28361.667

##### 8

# INPUT: 2 arrays of integers
# OUTPUT: sindle array in which each element pair is multiplied

# DO: create new array
# => iterate each_with_index
# => multiply element by other array[index]

# def multiply_list(arr1, arr2)
#   multiples = []

#   arr1.each_with_index { |n, idx| multiples << n * arr2[idx]}
#   multiples
# end 

# def multiply_list(arr1, arr2)
  
#   arr1.zip(arr2).map { |x, y|  x * y }
  

# end 

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

##### 9
# INPUT: 2 arrays of numbers
# OUTPUT: single array, with product for each number pair, in increasing order

# DO: use REDUCE to capture values in new array
# => double iteration
# return sorted array

# def multiply_all_pairs(arr1, arr2)
#   combined = []
  
#   arr1.map do |val1|
#      arr2.map {|val2| combined <<  val1 * val2}
#   end
#   combined.sort
# end 

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]



##### 10

def penultimate(string)

  string.split[-2]
end 


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'