require 'pry'

##### 1

# def rotate_array(arr)
#   # binding.pry
#   new_arr = arr.slice(1..-1).push(arr[0])
# end 


# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true


##### 2

# def rotate_rightmost_digits(integer, places)
#   sub_arr = integer.to_s.chars.slice(0..-(places+1))
#   to_swap = integer.to_s.chars.slice(-(places)..-1)
#   (sub_arr + rotate_array(to_swap)).join.to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917


##### 3

# def max_rotation(number)
#   swap_position = number.to_s.size
#   loop do 
#     number = rotate_rightmost_digits(number, swap_position)
#     swap_position -= 1
#     break if swap_position < 2  
#   end

#   number

# end


# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

##### 4



##### 5



##### 6



##### 7


##### 8



##### 9



##### 10