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

def reverse(array)
  new_array = []

  array.each {|item| new_array.unshift(item)}

  new_array

end 



p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 



# ##### 6




# ##### 7




# ##### 8



# ##### 9



# ##### 10