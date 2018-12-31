# method takes array of integers
# averages the array and returns average 

# def average(array)
#   total = array.reduce(0) { |sum, num| sum + num }
#   total.to_f / array.length

# end 

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40



############# SUM OF DIGITS #################

# method takes in an integer
# returns a sum of its digits


# def sum(number) 
#   sum = 0
#   number.to_s.split('').each { |n| sum += n.to_i }
#   sum
# end 


# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45


################## What's my bonus? ##########################

# method takes 2 arguments:
  # 1. SALARY = positive integer
  # 2. BONUS? = boolean
# calculate bonus
  # if BOOL == TRUE
    # bonus is 1/2 the salary


def calculate_bonus(salary, bonus)

  bonus ? salary / 2 : 0

end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000