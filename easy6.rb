##### 1

# create a method to receive a floating point number representing an angle
# convert that number into a string
# the string will represent degrees, minutes, seconds
  # need to convert the number into the above
# provide leading '0' for single digit numbers 


# Input - floating point number
# OUTPUT - string


# method needs:
    # take whole number / chop off decimal

# DEGREE = "\xC2\xB0"

# # the decimal part * 60 == minutes
# # the remaining decimal part * 60 == seconds
# def dms(degrees)

#   deg = degrees.floor 
#   temp_mins = degrees - deg

#   minutes = temp_mins * 60

#   temp_secs = minutes - minutes.floor 
  
#   seconds = (temp_secs * 60).round
  
#   minutes = minutes.floor

#   # p deg, minutes, seconds


#   p formatted_angle = "#{deg}#{DEGREE}#{minutes}'#{seconds}\" "
# end 


# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


# ##### 2

# def remove_vowels(vowel_array)

#   vowels = %(a e i o u )

#   no_vowel_array =  vowel_array.map do |string|

#     sub_array = string.chars.select do |c| 
      
#        !vowels.include?(c.downcase)

#     end 
#   end 

#   p no_vowel_array
# end 

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']



# ##### 3

# when the fib number > number input, we want the index of that number. where does that numbersit in the array?

# INPUT: number of digits representing # of place values in fib number

# OUTPUT: integer

# START

# SET helper method; return_fib
# INPUT: 2 integers
# OUTPUT: sum of integers

# SET 
# SET fib_array = []
# fib_array << 1 << 1
# call return_fib, passing in 1 and 1
# While fib_array[-1].to_s.size < place_values  
# fib_array << return_fib
# call return_fib with (fib_array[-1], fib_array[-2]


# RETURN fib_array.size 
# END


# def return_fib(a, b)
#   a + b
# end


# def find_fibonacci_index_by_length(place_values)
#   fib_array = [1, 1]

#   while fib_array[-1].to_s.size < place_values
#     fib_array << return_fib(fib_array[-1], fib_array[-2])
#   end 

#   fib_array.size 

# end 


# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847



# ##### 4

# INPUT: array of elements
# OUTPUT: the same array, but with all items reversed
# => CANNOT use .reverse

# START
# SET start = 0 
# SET end = array.length-1

# while start < end 
# array[start], array[end] = array[end], array[start]

#RETURN array

# def reverse!(array)

#   start = 0
#   end_point = array.length - 1

#   while start < end_point
#     array[start], array[end_point] = array[end_point], array[start]
#     start += 1
#     end_point -= 1
#   end 

#   array
# end 

# list = [1,2,3,4]
# result = reverse!(list)
# p result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"]
# p list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# p reverse!(list) == ["abc"]
# p list == ["abc"]

# list = []
# p reverse!(list) == []
# p list == []

# ##### 5

# INPUT: array of elements
# OUTPUT: new array with elements reversed
# START
# SET new_array = []
# .each over array 
# new_array.shift (each array item)
# return new_array

# END

# def reverse(array)
#   # new_array = []

#   # array.each {|item| new_array.unshift(item)}

#   array.inject([]) do |new_array, item|
#     new_array.unshift(item)
#   end 
# end 



# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 



# ##### 6

# INPUT: two arrays
# OUTPUT: single array with all valuse merged, removing dups

# START
# zip the two arrays, flatten, .uniq

# def merge(array1, array2)

#   p array1.zip(array2).flatten.uniq.sort

#   p (array1 << array2).flatten.uniq
# end 

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


# ##### 7

# INPUT: single array of elements
# OUTPUT: a nested array - with 2 sub arrays, which each hold 1/2 of the original elements
# If original array.odd?  then nested[0] has the extra element

# START
# SET new_array = []
# determine if array.size.odd?
# if odd
# => midpoint = array.size / 2 + 1
# => new_array << [array[0]..array[midpoint]] << [array[midpoint + 1]..array[-1]]
# RETURN new_array


# def halvsies(array)

#   new_array = []
#   midpoint = 0
#   if array.size.odd? 
#     midpoint = array.size / 2 + 1
#   else 
#     midpoint = array.size / 2
#   end  

#   new_array << array[0..midpoint - 1] << array[midpoint..-1]

#   new_array


# end 

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# ##### 8
# INPUT: an array with a single duplicate value
# OUTPUT: that duplicate value
# TASK: create a storage array.  iterate through the array. check if new value is included in that storage array.  If no, << new array in. If yes, return that value

# START 
# create a new_hash (.inject)
# SET duplicate = nil
# => iterate over the array, 
# => if hsh.key?(array_val)
# => duplicate = array_val
# => break
# => else
# => hsh[array_val] = false

# def find_dup(array)
#   storage_array = []
#   duplicate = nil
#   array.each do |item| 
    
#     if storage_array.include?(item)
#       duplicate = item
#       break
#     else 
#       storage_array << item
#     end 

  
#   end
# duplicate
  
# end 

# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73



# ##### 9
# INPUT: array, search value 
# OUTPUT: TRUE if array contains search value, else false

# START
# Iterate throug hte array. 
# check if search_val == array_element? TRUE : False

# any


# def include?(array, search_elem)

#   array.any? { |item| search_elem == item}
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false



# ##### 10
# INPUT: integer (n)
# OUTPUT: Puts to the screen a triangle
# => triangle has n rows
# => first row has 1 start
# => add another star on each row
# => starting point is n spaces to the right

# IDEAS:
# => make each line a string (can iterate and replace string each time)
# => right-alight the string based on n characters
# => repeat n times, adding another start each time

# => str.rjust(n)

# START
# for i..n do 
# => str = "*" * n 
# => p str.rjust(n)

# # END

# CHALLENGE TO TRY
# Try modifying your solution so it prints the triangle upside down from its current orientation. Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

def triangle(length)
  for n in 1..length  
    str = '*' * n  
    p str.rjust(length)

  end 
end 

# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end


triangle(5)

