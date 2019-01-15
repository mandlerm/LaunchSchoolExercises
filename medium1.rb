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

# INPUT: number - serves as limit
# OUTPUT: array of numbers indicating which are ON
# create an array of 1..n
# skip_count = 1
# DO: create hash with number 1..n as key and value as TRUE
# NEED LOOP to iterate from 1 (or 2) through n
# NEED INNER LOOP to toggle values each_val = ! val
# DO: 1..n do
# every_skip_count, create a sub_array with matching numbers
# then remove from the original array those numbers that match the sub_array

# def lights(n)
#   array_of_lights = {}
#   skip_count = 2
#   (1..n).step do |num| 
#     array_of_lights[num] = TRUE
#   end 
  
#     (2..n).step do |skip| 
#       skip.step(by: skip, to: n) do |key|
#         array_of_lights[key] = !array_of_lights[key]
#       end 
#     end 

#     lightbulbs = []
#     array_of_lights.select { |k, v| lightbulbs << k if v == TRUE}

#     lightbulbs
# end 

# p lights(5)
# p lights(10)
# p lights(1000)

##### 5

# INPUT: odd integer
# OUTPUT: print to screen - diamond
# => n rows high
# => n spaces wide at center
# => skip counting by 2, from 1 to n

# DO: iterate from 1 to n |current_num|
# => create a string *.current_num times
# => print string to screen, centered with n being argument to center

# def diamond(size)
#   1.step(by: 2, to: size) { |num| print_row(num, size) }
#   (size-2).step(by: -2, to: 1) { |num| print_row(num, size) }
# end

# # def print_row(num_of_stars, size)
# #   string = ''
# #   num_of_stars.times { string << "*" }
# #   puts string.center(size)  
# # end

# def print_row(num_of_stars, size)
#   string = ''
#   num_of_stars.times { string << " " }
#   string[0] = "*"
#   string[-1] = "*"
#   puts string.center(size)  
# end

# # diamond(1)
# # diamond(3)
# diamond(9)

##### 6

# INPUT: string of instructions - parameter str
# OUTPUT:
# NEEDS: 
# => instructions = str.split
# => interact with the shift value of array one at a time
# => IF val == integer, store this value in the register
# => 
# => write helper mthod for each instruction

def print(register)
  p register
end

def r_push(register, stack)
  stack.unshift(register)
end

# need to capture return value
def r_add(register, stack)
  register += stack.shift
end

# def r_print(register)
#   p register
# end

def r_mult(register, stack)
  register * stack.shift
end

def minilang(instructions)
  register = 0
  stack = []
  instructions.split.each do |command|
    if command.to_i.to_s == command
      register = command.to_i
    else
     case command
     when "PRINT"
      print(register)
     when "PUSH"
      r_push(register, stack)
      # register is replaced by new number
     when "MULT"
      register = r_mult(register, stack)
     end

    end 
  end
end


# minilang("3 PUSH PRINT 5 PUSH PRINT")
# minilang("3 PUSH 4 ADD PRINT")

# minilang('PRINT')
# # 0

minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)


##### 7


##### 8



##### 9



##### 10