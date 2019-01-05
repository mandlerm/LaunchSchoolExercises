
# def ascii_value(string)
#   sum = 0

#   string.chars { |c| sum += c.ord }

#    sum

# end 


# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0



# INPUT: minutes = integer (positive or negative)
# OUTPUT: time in military time
# PROCESS: 1. transform the integer into hours: minutes.
# 2. If integer == positive => ADD transformed time to 00:00
#.   If integer == negative => SUBTRACT transformed time from 00:00
# Account for minutes being beyond a 24 hour day 
#
#


# def time_of_day(time)
#   starting_hours = 24

#   hours = time / 60
#   minutes = time % 60
#   s_hours = ''
#   s_mins = ''
#   military_time = ''
#   positive = hours > 0 ? true : false

#   if hours == 0 && minutes == 0
#     s_hours = "00"
#     s_mins = "00"        
#   else 
    
#     s_mins = num_string(minutes)
   
#     if hours == 0 || hours.abs == 24
#       s_hours = '00'
#     elsif (1..23).include?(hours)
#        s_hours = num_string(hours)
#     elsif hours > 24
#       while hours > 24 
#         hours -= 24
#       end
      
#       s_hours = num_string(hours)
#     else 
      
#       while hours < 0 
#         hours += 24
#       end
#         s_hours = num_string(hours)
#     end  
    
#   end

#   # p s_hours, "++++++++++++"

#   military_time = "#{s_hours}:#{s_mins}"
  
#   military_time
# end 

# def num_string(num)
#   s_num = ''
  
#   if num.to_s.size < 2 
#     s_num = num.to_s.prepend('0') 
#   else 
#     s_num = num.to_s
#   end
#   s_num
# end   

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   p delta_minutes
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)

#   format('%02d:%02d', hours, minutes)
# end



# p time_of_day(0) == "00:00"

# p time_of_day(35) == "00:35"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
# p time_of_day(-3) == "23:57"
# p time_of_day(-1437) == "00:03"



####. LETTER SWAP

# def swap(string)

#   swapped = string.split.map do |word|
#     first = word[0]
#     word[0] = word[-1]
#     word[-1] = first
#     word
#   end 

# swapped.join(' ')


#  end  




# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# def swap(words)
#   result = words.split.map do |word|
#     p swap_first_last_characters(word[0], word[-1])
#   end
#   result.join(' ')
# end

#  p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'


# def cleanup(sentence)
#   sentence.gsub(/[^a-zA-Z]/,' ').squeeze(' ')
# end 


# p cleanup("---what's my +*& line?") == ' what s my line '



#########. Letter Counter Pt 1


# def word_sizes(sentence)
#   hsh = Hash.new(0)
    
#   sentence.split.each do |word|
#     hsh[word.size] += 1
#   end 
#   hsh
# end 

####. PART 2

# def word_sizes(sentence)
#   hsh = Hash.new(0)
  
#   sentence.split.each do |word|
#     word.gsub!(/[^a-zA-Z]/, '')
#     hsh[word.size] += 1
#   end 
#   hsh
# end 

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}


# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}



##### Alphabetic numbers

def alphabetic_number_sort(array)
  num_hash = {
    0 => "zero",
    1 => "one", 
    2 => "two", 
    3 => "three", 
    4 => "four", 
    5 => "five", 
    6 => "six", 
    7 => "seven", 
    8 => "eight", 
    9 => "nine",
    10 => "ten", 
    11 => "eleven", 
    12 => "twelve",
    13 => "thirteen", 
    14 => "fourteen", 
    15 => "fifteen", 
    16 => "sixteen", 
    17 => "seventeen", 
    18 => "eighteen", 
    19 => "nineteen"
  }
 

  numbered_array = array.sort_by do |num|
    num_hash[num]
  end 
  
 
end 


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]