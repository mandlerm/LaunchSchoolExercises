# method takes a positive integer
# creates a string that is the length of the integer passed in
# string is an alternating series of 1s and 0s

# need to track even / odd to know if 1 or 0

def stringy(length, reverse = 1)
  counter = 1 
  return_string = ''
  while counter <= length
    if counter % 2 == 0
      return_string << '0'
    else
      return_string << '1'
    end
    counter += 1
  end

  reverse == 1 ? return_string : return_string.reverse
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) 
puts stringy(9, 0) 
puts stringy(4, 0) 
